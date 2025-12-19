#!/usr/bin/env python3
import tkinter as tk
from PIL import Image, ImageTk, ImageDraw
import random
import time
import os
import threading
from pynput import keyboard

class TVEffect:
    def __init__(self):
        self.root = tk.Tk()
        self.root.withdraw()  # Hide the window initially
        self.root.attributes('-fullscreen', True)
        self.root.attributes('-topmost', True)
        self.root.configure(bg='black')
        self.root.overrideredirect(True)  # Remove window decorations
        
        self.intensity = 0.0
        self.target_intensity = 0.0
        self.is_key_held = False
        self.shutdown_triggered = False
        self.hold_start_time = None
        
        self.canvas = tk.Canvas(self.root, highlightthickness=0, bg='black')
        self.canvas.pack(fill=tk.BOTH, expand=True)
        
        # Set screen dimensions explicitly
        self.width = 1920
        self.height = 1080
        self.root.geometry(f"{self.width}x{self.height}+0+0")
        
        # Start the effect update loop
        self.update_loop()
        
        # Set up keyboard listener
        self.setup_keyboard_listener()
        
    def setup_keyboard_listener(self):
        """Set up global keyboard listener for Alt+Escape"""
        def on_key_press(key):
            try:
                if key == keyboard.Key.esc and keyboard.Key.alt in self.pressed_keys:
                    if not self.is_key_held:
                        self.is_key_held = True
                        self.hold_start_time = time.time()
                        self.show_overlay()
            except AttributeError:
                pass
        
        def on_key_release(key):
            try:
                if key == keyboard.Key.esc:
                    if self.is_key_held:
                        self.is_key_held = False
                        self.hold_start_time = None
                        # Check if we should shutdown
                        if self.intensity >= 1.0 and not self.shutdown_triggered:
                            self.trigger_shutdown()
                        else:
                            self.fade_out()
            except AttributeError:
                pass
        
        # Track pressed keys for modifier detection
        self.pressed_keys = set()
        
        def on_press(key):
            self.pressed_keys.add(key)
            on_key_press(key)
        
        def on_release(key):
            self.pressed_keys.discard(key)
            on_key_release(key)
        
        # Start the listener in a separate thread
        self.listener = keyboard.Listener(on_press=on_press, on_release=on_release)
        self.listener.daemon = True
        self.listener.start()
    
    def show_overlay(self):
        """Show the overlay window"""
        self.root.deiconify()
        self.root.attributes('-alpha', 0.0)
    
    def hide_overlay(self):
        """Hide the overlay window"""
        self.root.withdraw()
    
    def create_static_overlay(self, intensity):
        """Create TV static overlay with transparency"""
        if intensity <= 0:
            return None
            
        img = Image.new('RGBA', (self.width, self.height), (0, 0, 0, 0))
        draw = ImageDraw.Draw(img)
        
        center_x = self.width // 2
        center_y = self.height // 2
        max_radius = max(self.width, self.height)
        
        # Create vignette effect (dark edges)
        vignette_strength = intensity * 0.8
        if vignette_strength > 0:
            # Create a radial gradient for vignette
            for radius in range(int(max_radius * 0.3), int(max_radius * 1.2), 20):
                # Calculate alpha based on distance from center
                alpha = min(255, int(vignette_strength * (radius / max_radius) * 400))
                if alpha > 0:
                    # Draw concentric circles to create vignette
                    bbox = [center_x - radius, center_y - radius, 
                           center_x + radius, center_y + radius]
                    draw.ellipse(bbox, outline=(0, 0, 0, alpha), width=20)
        
        # Create center glow effect
        glow_strength = intensity * 1.2
        if glow_strength > 0:
            # Multiple layers of glow for smooth effect
            glow_radius_base = int(200 * glow_strength)
            for i in range(5):
                glow_radius = glow_radius_base + (i * 30)
                glow_alpha = max(0, int(glow_strength * 150 - (i * 30)))
                if glow_alpha > 0:
                    # Create glow circles
                    bbox = [center_x - glow_radius, center_y - glow_radius,
                           center_x + glow_radius, center_y + glow_radius]
                    draw.ellipse(bbox, fill=(255, 255, 240, glow_alpha))
        
        # Add scanlines (more prominent as intensity increases)
        scanline_alpha = int(intensity * 80)
        for y in range(0, self.height, 2):
            draw.line([(0, y), (self.width, y)], fill=(0, 0, 0, scanline_alpha))
        
        # Add random static noise
        static_points = int(intensity * 2000)
        for _ in range(static_points):
            x = random.randint(0, self.width-1)
            y = random.randint(0, self.height-1)
            brightness = random.randint(150, 255)
            alpha = min(255, int(intensity * 120))
            color = random.choice([
                (brightness, brightness, brightness, alpha),  # White static
                (brightness, brightness//2, brightness//2, alpha),  # Reddish
                (brightness//2, brightness, brightness//2, alpha),  # Greenish
            ])
            draw.point((x, y), fill=color)
        
        # Add color distortion bars occasionally
        if intensity > 0.5 and random.random() < 0.3:
            bar_y = random.randint(0, self.height-20)
            bar_height = random.randint(5, 20)
            distort_alpha = int(intensity * 60)
            draw.rectangle([(0, bar_y), (self.width, bar_y + bar_height)], 
                         fill=(255, 0, 255, distort_alpha))
        
        return ImageTk.PhotoImage(img)
    
    def update_loop(self):
        """Main update loop for the effect"""
        if self.is_key_held and self.hold_start_time:
            # Calculate how long the key has been held
            hold_duration = time.time() - self.hold_start_time
            
            # Intensity ramps up over 3 seconds
            self.target_intensity = min(1.0, hold_duration / 3.0)
            
            # Check for shutdown condition (held for 3+ seconds)
            if hold_duration >= 3.0 and not self.shutdown_triggered:
                self.trigger_shutdown()
                return
        
        elif not self.is_key_held:
            # Fade out when key is released
            self.target_intensity = 0.0
        
        # Smooth intensity interpolation
        if self.intensity < self.target_intensity:
            self.intensity = min(self.target_intensity, self.intensity + 0.05)
        elif self.intensity > self.target_intensity:
            self.intensity = max(self.target_intensity, self.intensity - 0.08)
        
        # Update visual effect
        if self.intensity > 0.01:
            self.canvas.delete("all")
            static_img = self.create_static_overlay(self.intensity)
            if static_img:
                self.canvas.create_image(0, 0, anchor=tk.NW, image=static_img)
                self.canvas.image = static_img  # Keep reference
            
            # Set window transparency based on intensity
            self.root.attributes('-alpha', min(0.85, self.intensity * 0.85))
        
        elif self.intensity <= 0.01 and not self.is_key_held:
            # Hide overlay when effect is completely faded
            self.hide_overlay()
        
        # Schedule next update (60 FPS)
        self.root.after(16, self.update_loop)
    
    def fade_out(self):
        """Start fading out the effect"""
        self.target_intensity = 0.0
    
    def trigger_shutdown(self):
        """Trigger the shutdown sequence"""
        if self.shutdown_triggered:
            return
            
        self.shutdown_triggered = True
        
        # Create "TV turning off" effect
        self.canvas.delete("all")
        self.canvas.configure(bg='black')
        self.root.attributes('-alpha', 1.0)
        
        # Brief pause then shutdown
        self.root.after(800, self.shutdown_system)
    
    def shutdown_system(self):
        """Actually shutdown the system"""
        os.system('systemctl poweroff')
    
    def run(self):
        """Start the application"""
        try:
            self.root.mainloop()
        except KeyboardInterrupt:
            self.listener.stop()

if __name__ == "__main__":
    # Run the TV effect in background
    effect = TVEffect()
    effect.run()
