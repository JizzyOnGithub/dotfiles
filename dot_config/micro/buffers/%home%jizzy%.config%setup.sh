HSerializedBuffer�� EventHandler�� Cursor�� ModTime��   8��EventHandler�� 	UndoStack�� 	RedoStack��   '��TEStack�� Top�� Size   *��Element�� Value�� Next��   B��	TextEvent�� C�� 	EventType Deltas�� Time��   m��Cursor�� Loc�� LastVisualX CurSelection�� OrigSelection�� NewTrailingWsY Num   ��Loc�� X Y   ��[2]buffer.Loc�� ��  ��[]buffer.Delta�� ��  0��Delta�� Text
 Start�� End��   ��Time��   ��i����   �� *��  
���� ��     �f��mɇ�\ ��   �� *�� �� 	�� ��     �f��@o��\ ��   �� *�� �� 	�� ��     �f��'��\ �� �� ���� ���� *��  iLATEST_VESK=$(curl -s "https://api.github.com/repos/Vencord/Vesktop/releases/latest" | jq -r '.tag_name')�� ����     �f�����\ ,�� 8  ,�� ,��   *�� ,��     �f�_��W�\ 2�� >,�� 2�� ,�� 2��  ssh,�� 2��     �f�^8t��\ �l �j �j �j   
�j �l     �`3�����\ �j �j �j �j   F�j �j     �`3�&�K��\ �@   �@   �ucat << 'EOF' > .zshrc
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
export ZSH="$HOME/.oh-my-zsh"
PROMPT="%F{white}╭─%f%B%F{red}%n%f%b @ %B%F{white}%d%f%k%b%B%F{red}
%F{white}╰──➤%f "

export PATH=/$HOME/.local/bin:/$HOME/.atuin/bin:/$HOME/.cargo/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games

source $ZSH/oh-my-zsh.sh
. "$HOME/.atuin/bin/env"
. "$HOME/.cargo/env"

plugins=(git sudo)
eval "$(zoxide init zsh)"
eval "$(atuin init zsh)"

alias apt="sudo nala"
alias ls="eza --icons=auto --group-directories-first --hyperlink"
alias nya="sudo apt update && sudo apt upgrade"

~/.ufetch.sh
EOF�@ �j     �`3�-��Y�\ �@ �@ �j �j   �tcat << 'EOF' > .zshrc
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
export ZSH="$HOME/.oh-my-zsh"
PROMPT="%F{white}╭─%f%B%F{red}%n%f%b @ %B%F{white}%d%f%k%b%B%F{red}
%F{white}╰──➤%f "

export PATH=/$HOME/.local/bin:/$HOME/.atuin/bin:/$HOME/.cargo/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games

source $ZSH/oh-my-zsh.sh
. "$HOME/.atuin/bin/env"
. "$HOME/.cargo/env"

plugins=(git sudo)
eval "$(zoxide init zsh)"
eval "$(atuin init zsh)"

alias apt="sudo nala"
alias ls="eza --icons=auto --group-directories-first --hyperlink"
alias nya="sudo apt update && sudo apt upgrade"

~/.ufetch.sh
EO�@ �j     �`3�-�!��\ &�� &&�� &�� &��   
&�� ��     �`3��ɞ�\ �N �N �N �N   
�N �P     �`3�����\ �8 �8 �8 �8   		�8 �8     �`3��c�\ �4 �4 �4 �4   
�4 �6     �`3�*��;�\ � � � �   		� �     �`3�"?Z��\ �   �   
� �     �`3�~�\ �   �   �$cat << 'EOF' > genshin.desktop
[Desktop Entry]
Version=1.5
Type=Application
Name=Genshin Impact
Comment=Explore the world of Tevyat! ...or just do your dalies
Icon=/home/jizzy/Applications/icons/genshin.png
Exec=/home/jizzy/Applications/anime-game-launcher
Terminal=false
Categories=Game;
EOF� �     �`3}+|�;�\ � � � �   �$cat << 'EOF' > genshin.desktop
[Desktop Entry]
Version=1.5
Type=Application
Name=Genshin Impact
Comment=Explore the world of Tevyat! ...or just do your dalies
Icon=/home/jizzy/Applications/icons/genshin.png
Exec=/home/jizzy/Applications/anime-game-launcher
Terminal=false
Categories=Game;
EOF� �     �`3}+y���\ �^   �^   �gcat << 'EOF' > .xbindkeysrc
# Launch Terminal
"kitty"
  Control+Alt + t

# Show rofi
"rofi -show drun"
  Mod4 + Tab

# Play/Pause
"playerctl play-pause"
 XF86AudioPlay

# Next 
"playerctl next"
 XF86AudioNext

# Previous
"playerctl previous"
 XF86AudioPrev

# Take a screenshot
"flameshot gui"
 Shift+Mod4 + s

# Raise / Lower volume
"wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
 XF86AudioRaiseVolume

"wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
  XF86AudioLowerVolume

## The stuff below is for dk
"dkcmd mon follow last"
 Control+Mod4+Alt + Right

"dkcmd mon follow last"
 Control+Mod4+Alt + Left

"dkcmd win swap"
 Control+Mod4 + Right

"dkcmd win swap"
 Control+Mod4 + Left

"dkcmd win full"
 Control+Mod4 + F11

"dkcmd win kill"
 Control+Mod4 + w

"dkcmd ws view 1"
 Mod4 + 1
 
"dkcmd ws view 2"
 Mod4 + 2

"dkcmd ws view 3"
 Mod4 + 3

"dkcmd ws view 4"
 Mod4 + 4
EOF�^ ��     �`3g!X7i�\ �� �^ �� �^   ��cat << 'EOF' > .xbindkeysrc
		# Launch Terminal
		"kitty"
		  Control+Alt + t
		
		# Show rofi
		"rofi -show drun"
		  Mod4 + Tab
		
		# Play/Pause
		"playerctl play-pause"
		 XF86AudioPlay
		
		# Next 
		"playerctl next"
		 XF86AudioNext
		
		# Previous
		"playerctl previous"
		 XF86AudioPrev
		
		# Take a screenshot
		"flameshot gui"
		 Shift+Mod4 + s
		
		# Raise / Lower volume
		"wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
		 XF86AudioRaiseVolume
		
		"wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
		  XF86AudioLowerVolume
		
		## The stuff below is for dk
		"dkcmd mon follow last"
		 Control+Mod4+Alt + Right
		
		"dkcmd mon follow last"
		 Control+Mod4+Alt + Left
		
		"dkcmd win swap"
		 Control+Mod4 + Right
		
		"dkcmd win swap"
		 Control+Mod4 + Left
		
		"dkcmd win full"
		 Control+Mod4 + F11
		
		"dkcmd win kill"
		 Control+Mod4 + w
		
		"dkcmd ws view 1"
		 Mod4 + 1
		 
		"dkcmd ws view 2"
		 Mod4 + 2
		
		"dkcmd ws view 3"
		 Mod4 + 3
		
		"dkcmd ws view 4"
		 Mod4 + 4
EOF�^ ��     �`3g!H	��\ �<   �<   ��cat << 'EOF' > dkrc
#!/bin/sh

# determine where to place the log file
logfile="$HOME/.dkrc.log"
[ -d "$HOME/.local/share/xorg" ] && logfile="$HOME/.local/share/xorg/dkrc.log"
: > "$logfile"

# load xbind for keybinds
xbindkeys &
/home/jizzy/startup.sh &

{ 
	# initialize 4 workspaces (1-6) (default: 1/monitor)
	dkcmd set numws=4

	# default workspace '_' values used when allocating new workspaces
	# can be applied to all existing workspaces when passed 'apply' after ws=_
	dkcmd set ws=_ apply layout=grid master=1 stack=3 gap=14 msplit=0.5 ssplit=0.5

	# enable static workspaces assigned to monitors (relevant for multiple monitors)
	#   aside -
	#     If you come from this workspace model, try embracing the default behaviour
	#     and access to all workspaces from any monitor, you might end up liking it :)
	#
	# this could be done in the names section above if being used
	#
#	mon1='HDMI-0'
#	mon2='HDMI1'
#	dkcmd set static_ws=true \
#	 	ws=1  mon=$mon1 \
#	 	ws=2  mon=$mon1 \
#	 	ws=3  mon=$mon2 \
#	 	ws=4  mon=$mon2 \


	# global settings
	# ---------------------

	# focus windows when receiving activation and enable focus-follows-mouse
	dkcmd set focus_open=true focus_urgent=false focus_mouse=true

	# place clients at the tail and ignore size hints on tiled windows
	dkcmd set tile_tohead=0 tile_hints=true

	# minimum width/height for resizing, and minimum allowed on-screen when moving
	dkcmd set win_minwh=50 win_minxy=10

	# disable gaps and borders in single window layouts
	dkcmd set smart_gap=false smart_border=false

	# define mouse mod and move/resize buttons
	dkcmd set mouse mod=alt move=button1 resize=button3

	# obey motif border hints on windows that draw their own (steam, easyeffects, etc.)
	dkcmd set obey_motif=true


	# borders
	# ---------

	# traditional
	# set border width and colour for each window state
	# dkcmd set border width=$border_width colour focus='#6699cc' unfocus='#000000' urgent='#ee5555'

	# alternative
	# enable split borders and colours, width is overall width, outer_width consumes some of width.
	# outer_width must be less than width, outer_width of 0 will be single borders
	dkcmd set border width=5 outer_width=0 \
		colour \
		focus='#FFFFFF' \
		unfocus='#404040' \
		urgent='#FF6666' \
		outer_focus='#222222' \
		outer_unfocus='#222222' \
		outer_urgent='#222222'


	# window rules
	# --------------

	# rule class, instance, and title regex are *always* case INSENSITIVE

	# open window(s) on a specific workspace (assigned monitor)
	# dkcmd rule class="^gimp$" ws=2

	# open window(s) on a monitor by number or name (active workspace on monitor)
	# dkcmd rule class="^chromium$" mon="HDMI-A-0"

	# open window(s) and use a callback function (user defined in config.h)
	# we also ignore_cfg=true to stop the window from being resized on it's own from events
	# eg. mpv --x11-name=albumart /path/to/media
	# dkcmd rule class="^mpv$" instance="^albumart$" float=true ignore_cfg=true callback=albumart bw=0

	# open window(s) in a floating state
	dkcmd rule class="^(pavucontrol|transmission-gtk|lxappearance|wine)$" float=true

	# open window(s) with a specific geometry and coordinates (floating only!)
	# dkcmd rule class="^google-chrome$" title="^open files$" float=true w=1280 h=720

	# open window(s) with ignore_msg=true to avoid focus being grabbed and changing workspace
	# dkcmd rule class="^TelegramDesktop$" ignore_msg=true

	# define some terminals and allow them to be absorbed by spawned windows
	dkcmd rule class="^(st|st-256color|urxvt|kitty|alacritty|xterm|xterm-256color)$" terminal=false

	# set a window to never absorb other windows, like the xev event tester
	dkcmd rule title="^Event Tester$" no_absorb=true
	dkcmd rule title="^osu.exe$" float=true
	dkcmd rule class="^winecfg.exe$" float=true 
	dkcmd rule class "^BlackOps3.exe" float=true
	dkcmd rule class="^(anime-game-launcher|GenshinImpact.exe)$" float=true
	dkcmd rule class="^(Eww|eww)$" float=true ignore_cfg=true
	dkcmd rule class="^(xob)$" float=true ignore_cfg=true

	# send a window to the scratchpad
	dkcmd rule class="^scratchpad$" scratch=true

	# focus window and workspace on opening
	# dkcmd rule class="^firefox$" ws=1 focus=true

	# update or remove an existing rule with the same match patterns
	# dkcmd rule class="^firefox$" mon="HDMI-A-0"
	# dkcmd rule remove class="^firefox$"

	# apply current rule set to all existing windows (used mainly for WM restart)
	dkcmd rule apply '*'

	# delete all rules
	# dkcmd rule remove '*'

} >> "$logfile" 2>&1 # append responses

# inform of any errors in a notification
if grep -q 'error:' "$logfile"; then
	hash notify-send && notify-send -t 0 -u critical "dkrc has errors" \
		"$(awk '/error:/ {sub(/^error: /, ""); gsub(/</, "\<"); print}' "$logfile")"
	exit 1
fi

exit 0
EOF�< �V     �`3R�/�\ �V �< �V �<   ��cat << 'EOF' > dkrc
#!/bin/sh

# determine where to place the log file
logfile="$HOME/.dkrc.log"
[ -d "$HOME/.local/share/xorg" ] && logfile="$HOME/.local/share/xorg/dkrc.log"
: > "$logfile"

# load xbind for keybinds
xbindkeys &
/home/jizzy/startup.sh &

{ 
	# initialize 4 workspaces (1-6) (default: 1/monitor)
	dkcmd set numws=4

	# default workspace '_' values used when allocating new workspaces
	# can be applied to all existing workspaces when passed 'apply' after ws=_
	dkcmd set ws=_ apply layout=grid master=1 stack=3 gap=14 msplit=0.5 ssplit=0.5

	# enable static workspaces assigned to monitors (relevant for multiple monitors)
	#   aside -
	#     If you come from this workspace model, try embracing the default behaviour
	#     and access to all workspaces from any monitor, you might end up liking it :)
	#
	# this could be done in the names section above if being used
	#
#	mon1='HDMI-0'
#	mon2='HDMI1'
#	dkcmd set static_ws=true \
#	 	ws=1  mon=$mon1 \
#	 	ws=2  mon=$mon1 \
#	 	ws=3  mon=$mon2 \
#	 	ws=4  mon=$mon2 \


	# global settings
	# ---------------------

	# focus windows when receiving activation and enable focus-follows-mouse
	dkcmd set focus_open=true focus_urgent=false focus_mouse=true

	# place clients at the tail and ignore size hints on tiled windows
	dkcmd set tile_tohead=0 tile_hints=true

	# minimum width/height for resizing, and minimum allowed on-screen when moving
	dkcmd set win_minwh=50 win_minxy=10

	# disable gaps and borders in single window layouts
	dkcmd set smart_gap=false smart_border=false

	# define mouse mod and move/resize buttons
	dkcmd set mouse mod=alt move=button1 resize=button3

	# obey motif border hints on windows that draw their own (steam, easyeffects, etc.)
	dkcmd set obey_motif=true


	# borders
	# ---------

	# traditional
	# set border width and colour for each window state
	# dkcmd set border width=$border_width colour focus='#6699cc' unfocus='#000000' urgent='#ee5555'

	# alternative
	# enable split borders and colours, width is overall width, outer_width consumes some of width.
	# outer_width must be less than width, outer_width of 0 will be single borders
	dkcmd set border width=5 outer_width=0 \
		colour \
		focus='#FFFFFF' \
		unfocus='#404040' \
		urgent='#FF6666' \
		outer_focus='#222222' \
		outer_unfocus='#222222' \
		outer_urgent='#222222'


	# window rules
	# --------------

	# rule class, instance, and title regex are *always* case INSENSITIVE

	# open window(s) on a specific workspace (assigned monitor)
	# dkcmd rule class="^gimp$" ws=2

	# open window(s) on a monitor by number or name (active workspace on monitor)
	# dkcmd rule class="^chromium$" mon="HDMI-A-0"

	# open window(s) and use a callback function (user defined in config.h)
	# we also ignore_cfg=true to stop the window from being resized on it's own from events
	# eg. mpv --x11-name=albumart /path/to/media
	# dkcmd rule class="^mpv$" instance="^albumart$" float=true ignore_cfg=true callback=albumart bw=0

	# open window(s) in a floating state
	dkcmd rule class="^(pavucontrol|transmission-gtk|lxappearance|wine)$" float=true

	# open window(s) with a specific geometry and coordinates (floating only!)
	# dkcmd rule class="^google-chrome$" title="^open files$" float=true w=1280 h=720

	# open window(s) with ignore_msg=true to avoid focus being grabbed and changing workspace
	# dkcmd rule class="^TelegramDesktop$" ignore_msg=true

	# define some terminals and allow them to be absorbed by spawned windows
	dkcmd rule class="^(st|st-256color|urxvt|kitty|alacritty|xterm|xterm-256color)$" terminal=false

	# set a window to never absorb other windows, like the xev event tester
	dkcmd rule title="^Event Tester$" no_absorb=true
	dkcmd rule title="^osu.exe$" float=true
	dkcmd rule class="^winecfg.exe$" float=true 
	dkcmd rule class "^BlackOps3.exe" float=true
	dkcmd rule class="^(anime-game-launcher|GenshinImpact.exe)$" float=true
	dkcmd rule class="^(Eww|eww)$" float=true ignore_cfg=true
	dkcmd rule class="^(xob)$" float=true ignore_cfg=true

	# send a window to the scratchpad
	dkcmd rule class="^scratchpad$" scratch=true

	# focus window and workspace on opening
	# dkcmd rule class="^firefox$" ws=1 focus=true

	# update or remove an existing rule with the same match patterns
	# dkcmd rule class="^firefox$" mon="HDMI-A-0"
	# dkcmd rule remove class="^firefox$"

	# apply current rule set to all existing windows (used mainly for WM restart)
	dkcmd rule apply '*'

	# delete all rules
	# dkcmd rule remove '*'

} >> "$logfile" 2>&1 # append responses

# inform of any errors in a notification
if grep -q 'error:' "$logfile"; then
	hash notify-send && notify-send -t 0 -u critical "dkrc has errors" \
		"$(awk '/error:/ {sub(/^error: /, ""); gsub(/</, "\<"); print}' "$logfile")"
	exit 1
fi

exit 0
EOF�< �V     �`3R�Ѐ�\ �N   �N   �hcat << 'EOF' > yazi.toml
[manager]
ratio = [1, 3, 2]
sort_dir_first = true
linemode = "size_and_mtime"
show_symlink = true

[opener]
edit = [
	{ run = 'micro "$@"', block = true, for = "unix" },
]
play = [
	{ run = 'mpv "$@"', orphan = true, for = "unix" },
]
open = [
	{ run = 'xdg-open "$@"', desc = "Open" },
]

[plugin]
  prepend_preloaders = [
    # Replace magick, image, video with mediainfo
    { mime = "{audio,video,image}/*", run = "mediainfo" },
    { mime = "application/subrip", run = "mediainfo" },
  ]
  prepend_previewers = [
  	# Replace magick, image, video with mediainfo
  	{ mime = "{audio,video,image}/*", run = "mediainfo"},
  	{ mime = "application/subrip", run = "mediainfo" },
  	# Archive previewer
  	{ mime = "application/*zip",            run = "ouch" },
  	{ mime = "application/x-tar",           run = "ouch" },
  	{ mime = "application/x-bzip2",         run = "ouch" },
  	{ mime = "application/x-7z-compressed", run = "ouch" },
  	{ mime = "application/x-rar",           run = "ouch" },
  	{ mime = "application/x-xz",            run = "ouch" },
  	{ mime = "*/",	run = "eza-preview"},
  ]
EOF�N ��     �`343���\ �� �N �� �N   ��cat << 'EOF' > yazi.toml
		[manager]
		ratio = [1, 3, 2]
		sort_dir_first = true
		linemode = "size_and_mtime"
		show_symlink = true
		
		[opener]
		edit = [
			{ run = 'micro "$@"', block = true, for = "unix" },
		]
		play = [
			{ run = 'mpv "$@"', orphan = true, for = "unix" },
		]
		open = [
			{ run = 'xdg-open "$@"', desc = "Open" },
		]
		
		[plugin]
		  prepend_preloaders = [
		    # Replace magick, image, video with mediainfo
		    { mime = "{audio,video,image}/*", run = "mediainfo" },
		    { mime = "application/subrip", run = "mediainfo" },
		  ]
		  prepend_previewers = [
		  	# Replace magick, image, video with mediainfo
		  	{ mime = "{audio,video,image}/*", run = "mediainfo"},
		  	{ mime = "application/subrip", run = "mediainfo" },
		  	# Archive previewer
		  	{ mime = "application/*zip",            run = "ouch" },
		  	{ mime = "application/x-tar",           run = "ouch" },
		  	{ mime = "application/x-bzip2",         run = "ouch" },
		  	{ mime = "application/x-7z-compressed", run = "ouch" },
		  	{ mime = "application/x-rar",           run = "ouch" },
		  	{ mime = "application/x-xz",            run = "ouch" },
		  	{ mime = "*/",	run = "eza-preview"},
		  ]
EOF�N ��     �`343�L��\ �L �L �L �L   	�L �L     �`3()���\ �L �L �L �L   	�L �L     �`3( �o��\ ��   ��   ��cat << 'EOF' > keymap.toml
[[manager.prepend_keymap]]
desc = "Start bunny.yazi"
on = "'"
run = "plugin bunny"

[[manager.prepend_keymap]]
on   = [ "c", "m" ]
run  = "plugin chmod"
desc = "Chmod on selected files"

[[manager.prepend_keymap]]
on   = [ "c", "q" ]
run  = "shell 'ripdrag \"$@\" -x 2>/dev/null &' --confirm"
desc = "Drag and drop"

[[manager.prepend_keymap]]
on = [ "j", "s" ]
run = "plugin what-size"
desc = "Calc size of selection or cwd"

# sudo cp/mv
[[manager.prepend_keymap]]
on = ["R", "p", "p"]
run = "plugin sudo -- paste"
desc = "sudo paste"

# sudo cp/mv --force
[[manager.prepend_keymap]]
on = ["R", "P"]
run = "plugin sudo -- paste --force"
desc = "sudo paste"

# sudo mv
[[manager.prepend_keymap]]
on = ["R", "r"]
run = "plugin sudo -- rename"
desc = "sudo rename"

# sudo ln -s (absolute-path)
[[manager.prepend_keymap]]
on = ["R", "p", "l"]
run = "plugin sudo -- link"
desc = "sudo link"

# sudo ln -s (relative-path)
[[manager.prepend_keymap]]
on = ["R", "p", "r"]
run = "plugin sudo -- link --relative"
desc = "sudo link relative path"

# sudo ln
[[manager.prepend_keymap]]
on = ["R", "p", "L"]
run = "plugin sudo -- hardlink"
desc = "sudo hardlink"

# sudo touch/mkdir
[[manager.prepend_keymap]]
on = ["R", "a"]
run = "plugin sudo -- create"
desc = "sudo create"

# sudo trash
[[manager.prepend_keymap]]
on = ["R", "d"]
run = "plugin sudo -- remove"
desc = "sudo trash"

# sudo delete
[[manager.prepend_keymap]]
on = ["R", "D"]
run = "plugin sudo -- remove --permanently"
desc = "sudo delete"

# ouch compression
[[manager.prepend_keymap]]
on = ["C"]
run = "plugin ouch --args=zst"
desc = "Compress with ouch"

[[manager.prepend_keymap]]
on = "<C-y>"
run = ["plugin clipboard"]
EOF�� �H     �`3#	|��\ �H �� �H ��   �Vcat << 'EOF' > keymap.toml
		[[manager.prepend_keymap]]
		desc = "Start bunny.yazi"
		on = "'"
		run = "plugin bunny"
		
		[[manager.prepend_keymap]]
		on   = [ "c", "m" ]
		run  = "plugin chmod"
		desc = "Chmod on selected files"
		
		[[manager.prepend_keymap]]
		on   = [ "c", "q" ]
		run  = "shell 'ripdrag \"$@\" -x 2>/dev/null &' --confirm"
		desc = "Drag and drop"
		
		[[manager.prepend_keymap]]
		on = [ "j", "s" ]
		run = "plugin what-size"
		desc = "Calc size of selection or cwd"
		
		# sudo cp/mv
		[[manager.prepend_keymap]]
		on = ["R", "p", "p"]
		run = "plugin sudo -- paste"
		desc = "sudo paste"
		
		# sudo cp/mv --force
		[[manager.prepend_keymap]]
		on = ["R", "P"]
		run = "plugin sudo -- paste --force"
		desc = "sudo paste"
		
		# sudo mv
		[[manager.prepend_keymap]]
		on = ["R", "r"]
		run = "plugin sudo -- rename"
		desc = "sudo rename"
		
		# sudo ln -s (absolute-path)
		[[manager.prepend_keymap]]
		on = ["R", "p", "l"]
		run = "plugin sudo -- link"
		desc = "sudo link"
		
		# sudo ln -s (relative-path)
		[[manager.prepend_keymap]]
		on = ["R", "p", "r"]
		run = "plugin sudo -- link --relative"
		desc = "sudo link relative path"
		
		# sudo ln
		[[manager.prepend_keymap]]
		on = ["R", "p", "L"]
		run = "plugin sudo -- hardlink"
		desc = "sudo hardlink"
		
		# sudo touch/mkdir
		[[manager.prepend_keymap]]
		on = ["R", "a"]
		run = "plugin sudo -- create"
		desc = "sudo create"
		
		# sudo trash
		[[manager.prepend_keymap]]
		on = ["R", "d"]
		run = "plugin sudo -- remove"
		desc = "sudo trash"
		
		# sudo delete
		[[manager.prepend_keymap]]
		on = ["R", "D"]
		run = "plugin sudo -- remove --permanently"
		desc = "sudo delete"
		
		# ouch compression
		[[manager.prepend_keymap]]
		on = ["C"]
		run = "plugin ouch --args=zst"
		desc = "Compress with ouch"
		
		[[manager.prepend_keymap]]
		on = "<C-y>"
		run = ["plugin clipboard"]
EOF�� �H     �`3#	h���\ �� �� �� ��   	�� ��     �`3�)��\ �� �� �� ��   	�� ��     �`3�^��\ ^   ^   ��cat << 'EOF' > init.lua
function Linemode:size_and_mtime()
	local time = math.floor(self._file.cha.mtime or 0)
	if time == 0 then
		time = ""
	elseif os.date("%Y", time) == os.date("%Y") then
		time = os.date("%b %d %H:%M", time)
	else
		time = os.date("%b %d  %Y", time)
	end

	local size = self._file:size()
	return ui.Line(string.format("%s %s", size and ya.readable_size(size) or "-", time))
end

local home = os.getenv("HOME")
require("bunny"):setup({
  hops = {
    { tag = "home", path = home, key = "h" },
    { tag = "ServerNyaa", path = "/media/ServerNyaa", key = "s" },
    { tag = ".config", path = "/home/jizzy/.config", key = "c" },
    { tag = "Downloads", path = "/home/jizzy/Downloads", key = "d" },
    { tag = "Pics", path = "/home/jizzy/Pictures", key = "d" },
    { tag = "Vids", path = "/home/jizzy/Videos", key = "d" },
  },
  notify = true, -- notify after hopping, default is false
  fuzzy_cmd = "sk", -- fuzzy searching command, default is fzf
})

require("full-border"):setup()
EOF^ ��     �`2�3����\ �� ^ �� ^   �*cat << 'EOF' > init.lua
		function Linemode:size_and_mtime()
			local time = math.floor(self._file.cha.mtime or 0)
			if time == 0 then
				time = ""
			elseif os.date("%Y", time) == os.date("%Y") then
				time = os.date("%b %d %H:%M", time)
			else
				time = os.date("%b %d  %Y", time)
			end
		
			local size = self._file:size()
			return ui.Line(string.format("%s %s", size and ya.readable_size(size) or "-", time))
		end
		
		local home = os.getenv("HOME")
		require("bunny"):setup({
		  hops = {
		    { tag = "home", path = home, key = "h" },
		    { tag = "ServerNyaa", path = "/media/ServerNyaa", key = "s" },
		    { tag = ".config", path = "/home/jizzy/.config", key = "c" },
		    { tag = "Downloads", path = "/home/jizzy/Downloads", key = "d" },
		    { tag = "Pics", path = "/home/jizzy/Pictures", key = "d" },
		    { tag = "Vids", path = "/home/jizzy/Videos", key = "d" },
		  },
		  notify = true, -- notify after hopping, default is false
		  fuzzy_cmd = "sk", -- fuzzy searching command, default is fzf
		})
		
		require("full-border"):setup()
EOF^ ��     �`2�3�Rm�\ �� �� �� �� ��  	�� ��     �`1�)xLx�\ �� �� �� �� ��  	�� ��     �`1� Lt�\ �H �H �H �H ��  	�H �H     �`1�1���\ �H �H �H �H ��  	�H �H     �`1� ����\ �d �d �d �d ��  
�b �d     �`1�O���\ �� �� �� �� ��  		�� ��     �`1b'ˁ��\ �� $�� �� �� ��  
�� ��     �`1b'���\ �� �� �� �� ��  		�� ��     �`1`�	'�\ v�� ��v�� v�� v�� ��  
v�� ��     �`1`�]��\ �� �� �� �� ��  		�� ��     �`1^eE��\ d�� pd�� d�� d�� ��  
d�� ��     �`1^d���\ �� �� �� �� ��  		�� ��     �`1[����\ �� �� �� �� ��  	�� ��     �`1W	 .h�\ �� �� �� �� ��  	�� ��     �`1V2����\ �� �� �� �� ��  		�� ��     �`1P�J�\ �� �� �� �� ��  		�� ��     �`1O&��'�\ �� �� �� �� ��  		�� ��     �`1N:����\ �� �� �� �� ��  		�� ��     �`1L4<�\ �� �� �� �� ��  		�� ��     �`1L�9�\ �� �� �� �� ��  		�� ��     �`1K����\ �� �� �� �� ��  		�� ��     �`1J/��'�\ �� �� �� �� ��  		�� ��     �`1J	���\ �� �� �� �� ��  		�� ��     �`1I i:J�\ �� �� �� �� ��  		�� ��     �`1H7z���\ �� �� �� �� ��  		�� ��     �`1H�dJ�\ �� �� �� �� ��  		�� ��     �`1G$fڬ�\ �� �� �� �� ��  		�� ��     �`1G�.N�\ �� �� �� �� ��  		�� ��     �`1F�f�\ �� �� �� �� ��  		�� ��     �`1E"3�\ �� �� �� �� ��  		�� ��     �`1D'bS��\ �� �� �� �� ��  		�� ��     �`1C:cJ��\ �� �� �� �� ��  		�� ��     �`1CT���\ �� �� �� �� ��  		�� ��     �`1B$�7g�\ �� �� �� �� ��  		�� ��     �`1A.���\ �� �� �� �� ��  		�� ��     �`1A�."�\ �� �� �� �� ��  		�� ��     �`1@jY^�\ �� �� �� �� ��  		�� ��     �`1?0Y��\ �� �� �� �� ��  		�� ��     �`1?	���\ �� �� �� �� ��  		�� ��     �`1>��U�\ �� �� �� �� ��  		�� ��     �`1=.�aZ�\ �� �� �� �� ��  		�� ��     �`1=Js�\ �� �� �� �� ��  		�� ��     �`1<�$��\ �� �� �� �� ��  		�� ��     �`1;���\ �� �� �� �� ��  		�� ��     �`1:+���\ �� �� �� �� ��  		�� ��     �`193����\ �� �� �� �� ��  		�� ��     �`185����\ �� �� �� �� ��  		�� ��     �`18 ��+�\ �� �� �� �� ��  		�� ��     �`16Ȥ>�\ �� �� �� �� ��  		�� ��     �`112�� �\ �� �� �� �� ��  		�� ��     �`10����\ �� �� �� �� `  	�� ��     �`1!�jp�\ �� �� �� �� `  	�� ��     �`1!	�E9�\ �� �� �� �� `  	�� ��     �`1&mX��\ �� �� �� �� `  	�� ��     �`1v5��\ �� �� �� �� `  	�� ��     �`1!H��\ �� �� �� �� `  	�� ��     �`1���\ �� �� �� �� `   �� ��     �`13
٨�\ 
�� 
�� 
�� 
�� `   �� 
��     �`1""O�\ �� �� �� �� `   
�� ��     �`1����\ ��  �� �� �� `   �� ��     �`1��\ �� "�� �� �� `   �� ��     �`17����\ �� $�� �� �� `   �� ��     �`1-�O��\ �� �� �� �� `   �� ��     �`1 P���\ 
�� 
�� 
�� 
�� `   �� 
��     �`1��\ �� �� �� �� `   
�� ��     �`19Y�T�\ ��  �� �� �� `   �� ��     �`1&cq��\ �� "�� �� �� `   �� ��     �`1j�\ �� $�� �� �� `   �� ��     �`14�+�\ ��  �� �� �� `  	�� ��     �`1
Q���\ 
�� "
�� 
�� 
�� `   �� 
��     �`10�\�\ �� $�� �� �� `   
�� ��     �`1&����\ ��  �� �� �� `  	�� ��     �`1��y�\ 
�� "
�� 
�� 
�� `   �� 
��     �`1��c�\ �� $�� �� �� `   
�� ��     �`1K��\ ��  �� �� �� `  	�� ��     �`15r4�\ 
�� "
�� 
�� 
�� `   �� 
��     �`1
��x�\ �� $�� �� �� `   
�� ��     �`1
ޫ�\ �� �� �� �� `  	�� ��     �`1	%? ��\ ��  �� �� �� `  	�� ��     �`1	�M��\ �� �� �� �� `  	�� ��     �`1�Ae�\ ��  �� �� �� `  	�� ��     �`1���\ �� �� �� �� `  	�� ��     �`19��\ ��  �� �� �� `  	�� ��     �`1K�F�\ �� �� �� �� `  	�� ��     �`159!&�\ ��  �� �� �� `  	�� ��     �`1-�CS�\ �� �� �� �� `  	�� ��     �`18�V��\ ��  �� �� �� `  	�� ��     �`10u���\ �� �� �� �� `  	�� ��     �`1�^��\ ��  �� �� �� `  	�� ��     �`1��*�\ �� �� �� �� `  	�� ��     �`12;��\ ��  �� �� �� `  	�� ��     �`1)�6>�\ �� �� �� �� `  	�� ��     �`17����\ ��  �� �� �� `  	�� ��     �`105�6�\ �� �� �� �� `  	�� ��     �`1 9p�(�\ ��  �� �� �� `  	�� ��     �`1 1<��\ �~ �~ �~ �~ `  	�~ �~     �`0�5����\ �~ �~ �~ �~ `  	�~ �~     �`0�g��\ �| �| �| �| `  		�| �|     �`0�7H�\ �z �z �z �z `  	�z �z     �`0�/��N�\ �z �z �z �z `  	�z �z     �`0��a�\ �� �� �� �� `  	�� ��     �`0�6S���\ �� �� �� �� `  	�� ��     �`0�,�`��\ �^ �^ �^ �^ `  	�^ �^     �`0��V�\ �^ �^ �^ �^ `  	�^ �^     �`0�rؙ�\ �: �: �: �: `  				�: �:     �`0q4��5�\ 2�8 J2�8 2�8 2�8 `  
2�8 �:     �`0q4�W��\     `  	      �`/�47���\     `  	      �`/�)l��\ �. �. �. �. `  '�. �.     �`/�;>���\ �. �. �. �. `  '�. �.     �`/� ��T�\ �. �. �. �. `   �. �.     �`/�3T�y�\ �. �. �. �. `  	�. �.     �`/�&H<�\ �. �. �. �. `  	�. �.     �`/�t)�\ � � � � `  '� �     �`/����\ � � � � `  '� �     �`/���w�\ � � � � `   � �     �`/�	���\ � � � � `  	� �     �`/�L�\ � � � � `  	� �     �`/�$]���\ �� �� �� �� `  '�� ��     �`/�	���\ �� �� �� �� `  '�� ��     �`/�:�1��\ �� �� �� �� `   �� ��     �`/�!N��\ �� �� �� �� `  	�� ��     �`/�0�2�\ �� �� �� �� `  	�� ��     �`/�v�b�\ \ \ \ \ \  		\ \     �`/E����\ Z Z Z Z Z  		Z Z     �`/D6����\ X X X X X  		X X     �`/DvA��\ V V V V V  		V V     �`/C)�[�\ T T T T T  		T T     �`/B����\ R R R R R  		R R     �`/B�5�\ P P P P P  		P P     �`/A.��S�\ N N N N N  		N N     �`/A ,e��\ L L L L L  		L L     �`/A��<�\ J J J J J  		J J     �`/@:�4��\ H H H H H  		H H     �`/@*��i�\ F F F F F  		F F     �`/@��7�\ D D D D D  		D D     �`/@
�`��\ B B B B B  		B B     �`/?6��0�\ @ @ @ @ @  		@ @     �`/?%��\ > > > > >  		> >     �`/?�+��\ < < < < <  		< <     �`/?+���\ : : : : :  		: :     �`/>,�cL�\ 8 8 8 8 8  		8 8     �`/>|{g�\ 6 6 6 6 6  		6 6     �`/>� �\ 4 4 4 4 4  		4 4     �`/=:d�(�\ 2 2 2 2 2  		2 2     �`/=*"f�\ 0 0 0 0 0  		0 0     �`/=
+θ�\ , , , , ,  		, ,     �`/<"���\ * * * * *  		* *     �`/;,�ja�\ ( ( ( ( (  		( (     �`/;�<P�\ & & & & &  		& &     �`/;�\�\ $ $ $ $ $  		$ $     �`/: �r�\ " " " " "  		" "     �`/951`��\            		        �`/86����\       	      �`/,*r?��\       	      �`/,b�\       		      �`/(7IF�\       		      �`/%!2±�\       		      �`/"'���\       	      �`/8o�S�\       	      �`/,Ϟ��\       	      �`/����\       	      �`/2�\ �~ T�� �� ��   r�~ ��     �`/)���\ �| R�~ �~ �~   e�| �~     �`/
����\ �z P�| �| �|   t�z �|     �`/�lZ�\ �x N�z �z �z   n�x �z     �`/7�rQ�\ �v L�x �x �x   E�v �x     �`//���\ �t J�v �v �v    �t �v     �`/�6i�\ �r H�t �t �t   t�r �t     �`/�]�\ �p F�r �r �r   i�p �r     �`/N���\ �n D�p �p �p   H�n �p     �`/	�a�\ �n D�n �n �n   ]�n �p     �`/�8l�\ �l B�l �l �l   [�l �n     �`/��4�\ �n D�n �n �n   {�l �n     �`/��a�\ �n D�p �p �p   }�n �p     �`/�3N�\ �n D�n �n �n   }�n �p     �`/0�$��\ �l B�l �l �l   {�l �n     �`/0�|��\ �j @�j �j �j    �j �l     �`/��B�\ 
 
 
 
   		
 
     �`/!��,�\       		      �`/��&�\       		      �`/
����\       
      �`/4�fw�\       	      �`/7��:�\       	      �`/%�&��\       h      �`.�'��6�\       s      �`.�&-%�\       a      �`.� w���\       b      �`.�T���\       /      �`.�5RM��\ 
 

 
 
 
  n
      �`.�)�@��\       i 
     �`.�&|gV�\       b      �`.�!�JH�\       /      �`.�m�n�\       !      �`.�'��}�\       #      �`.�!i��\       !      �`.�,T;��\       !      �`.�5�eM�\   �^ �^   �ϳ#!/bin/bash
		echo '
		
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                   -                                                                                                             
		                 =-::::.:=#:                                                                                                     
		                 +:::  .:::::=+                                         -#+=*-                                                   
		                 =::       .::::=                                   +:.:...:::%                                                  
		                 :::.        :::::-%       .=++++==+=.           +.:::.     :.-                                                  
		                 :..         .::::::--:::.::::::::::::::::+=  *:.:::        ::=                                                  
		                 :::.         :::::::::::-:::::::::::::::::::::::.          :::                                                  
		                 =..          :.:::::::::::::::::::::::::::::::::           .:-                                                  
		                 #:..     ..::::::::::::::::::::::::::::::::::::::         :.:=                                                  
		                 =.:   .::::::::::::::::::::::::::::::::::::::::::.        ..:%               =#=::::::::-**                     
		                  +:::::::::::::::::::::::::::::::::::::::::::::::::.    ..:::+            *::::-:::::::::::::+                  
		                  ++::::::::::::::::::::::::::::::::::::::::::::::::::    ...+           *.:::.:-+*+**+=-:::::::=                
		                 +.::::::::::::::::::::::::::::::::.:::::::::::::.:::::  .:::*          #.::::-+*+********-:::::::               
		                : :.::::::::::::::::::::::::::::.::::-:::::::::::::::::.::::*          -.::::-**+       #**+-::::.-              
		                  .:.   :::::::::::::::::::::::::::::::::::::::::::::.::::::#%         =:::::*%           :*=::::::+             
		                 =     :     ...-::*-.:::::::::.:::::::.::%::::::::::  =-+:::-         :.::::*%             #::::::..            
		                #     =.           ++                    =             - #    +        :::::-+%             +::::::.*            
		            +.:*::  ::%::.=+-::::=  .=:.:::.:...     :. :-* .*=        =-#..  :        -:..::++              :::::.:*            
		           =.:.#::.::-=.:::::::-+    #:..::::.:::::::.::*   * :::#:....-#+-:..          *::.:=%             ::.:::::-            
		           -.:==:::-:+=:::::.:+       *.:::::.:::::::.:=      *::::::::===+::..:                            #.::::.-             
		          *...#-:::%:+-:::::*          *::..:..:::.:::-        #.::::::+-=%::::-                            =::.:::%             
		          ::= *:::-%:+-::.:-            +.:...:...:.-:          .:.:...*-+@+::.+                           *.:::::=              
		         ==   -:::*@:+=..%               +.        #              *   .@:=@%::.+                          +.:.:::::              
		         .     ::=*@:-= %@@@@@@@@@@@@@#=   -     :. @@@@@@@@@@@@@@@%   +:+@@=::#                         +:.::...:               
		               =:+*@-.%##    =  +@@@@@      -   %          @@@@@%   @ *::+@@#::#                        +...:.:::                
		               #:**@-::.%     @@@@@@@%        -         @@@@@@@@   .-@=::#@@%-.#                       *.::::.=                  
		                =*- =::::-    @@@@@@@                   @@@@@@@#   *:::.:%@@@=:%                      =::...:+                   
		                %:  #.::::.+   @@@@@*                    @@@@@   .+::.:::@@@@#:@                    .-.:.::-.                    
		                     *:::@%++    :                             *:::-:=       @.+                   *.:.:::%                      
		              *       #..=                                      #=.+=    *    =:                 +:....:#                        
		              *:%   **                                             .=*   =  ==                         =@+                       
		                                                                                                        -:.+*- .%.               
		                                                                                                         +.                      
		
		'
		sleep 0.1
		clear
		echo '
		
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                   -                                                                                                             
		                 =-::::.:=#:                                                                                                     
		                 +:::  .:::::=+                                         -#+=*-                                                   
		                 =::       .::::=                                   +:.:...:::%                                                  
		                 :::.        :::::-%       .=++++==+=.           +.:::.     :.-                                                  
		                 :..         .::::::--:::.::::::::::::::::+=  *:.:::        ::=                                                  
		                 :::.         :::::::::::-:::::::::::::::::::::::.          :::                                                  
		                 =..          :.:::::::::::::::::::::::::::::::::           .:-                                                  
		                 #:..     ..::::::::::::::::::::::::::::::::::::::         :.:=                                                  
		                 =.:   .::::::::::::::::::::::::::::::::::::::::::.        ..:%               =#=::::::::-**                     
		                  +:::::::::::::::::::::::::::::::::::::::::::::::::.    ..:::+            *::::-:::::::::::::+                  
		                  ++::::::::::::::::::::::::::::::::::::::::::::::::::    ...+           *.:::.:-+*+**+=-:::::::=                
		                 +.::::::::::::::::::::::::::::::::.:::::::::::::.:::::  .:::*          #.::::-+*+********-:::::::               
		                : :.::::::::::::::::::::::::::::.::::-:::::::::::::::::.::::*          -.::::-**+       #**+-::::.-              
		                  .:.   :::::::::::::::::::::::::::::::::::::::::::::.::::::#%         =:::::*%           :*=::::::+             
		                 =     :     ...-::*-.:::::::::.:::::::.::%::::::::::  =-+:::-         :.::::*%             #::::::..            
		                #     =.           ++                    =             - #    +        :::::-+%             +::::::.*            
		            +.:*::  ::%::.=+-::::=  .=:.:::.:...     :. :-* .*=        =-#..  :        -:..::++              :::::.:*            
		           =.:.#::.::-=.:::::::-+    #:..::::.:::::::.::*   * :::#:....-#+-:..          *::.:=%             ::.:::::-            
		           -.:==:::-:+=:::::.:+       *.:::::.:::::::.:=      *::::::::===+::..:                            #.::::.-             
		          *...#-:::%:+-:::::*          *::..:..:::.:::-        #.::::::+-=%::::-                            =::.:::%             
		          ::= *:::-%:+-::.:-            +.:...:...:.-:          .:.:...*-+@+::.+                           *.:::::=              
		         ==   -:::*@:+=..%               +.        #              *   .@:=@%::.+                          +.:.:::::              
		         .     ::=*@:-= %@@@@@@@@@@@@@#=   -     :. @@@@@@@@@@@@@@@%   +:+@@=::#                         +:.::...:               
		               =:+*@-.%##    =  +@@@@@      -   %          @@@@@%   @ *::+@@#::#                        +...:.:::                
		               #:**@-::.%     @@@@@@@%        -         @@@@@@@@   .-@=::#@@%-.#                       *.::::.=                  
		                =*- =::::-    @@@@@@@                   @@@@@@@#   *:::.:%@@@=:%                      =::...:+                   
		                %:  #.::::.+   @@@@@*                    @@@@@   .+::.:::@@@@#:@                    .-.:.::-.                    
		                     *:::@%++    :                             *:::-:=       @.+                   *.:.:::%                      
		              *       #..=                                      #=.+=    *    =:                 +:....:#                        
		              *:%   **                                             .=*   =  ==                         =@+                       
		                                                                                                        -:.+*- .%.               
		                                                                                                         +.                      
		
		'
		sleep 0.1
		clear
		echo '
		
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                   -                                                                                                             
		                 =-::::.:=#:                                                                                                     
		                 +:::  .:::::=+                                         -#+=*-                                                   
		                 =::       .::::=                                   +:.:...:::%                                                  
		                 :::.        :::::-%       .=++++==+=.           +.:::.     :.-                                                  
		                 :..         .::::::--:::.::::::::::::::::+=  *:.:::        ::=                                                  
		                 :::.         :::::::::::-:::::::::::::::::::::::.          :::                                                  
		                 =..          :.:::::::::::::::::::::::::::::::::           .:-                                                  
		                 #:..     ..::::::::::::::::::::::::::::::::::::::         :.:=                                                  
		                 =.:   .::::::::::::::::::::::::::::::::::::::::::.        ..:%               =#=::::::::-**                     
		                  +:::::::::::::::::::::::::::::::::::::::::::::::::.    ..:::+            *::::-:::::::::::::+                  
		                  ++::::::::::::::::::::::::::::::::::::::::::::::::::    ...+           *.:::.:-+*+**+=-:::::::=                
		                 +.::::::::::::::::::::::::::::::::.:::::::::::::.:::::  .:::*          #.::::-+*+********-:::::::               
		                : :.::::::::::::::::::::::::::::.::::-:::::::::::::::::.::::*          -.::::-**+       #**+-::::.-              
		                  .:.   :::::::::::::::::::::::::::::::::::::::::::::.::::::#%         =:::::*%           :*=::::::+             
		                 =     :     ...-::*-.:::::::::.:::::::.::%::::::::::  =-+:::-         :.::::*%             #::::::..            
		                #     =.           ++                    =             - #    +        :::::-+%             +::::::.*            
		            +.:*::  ::%::.=+-::::=  .=:.:::.:...     :. :-* .*=        =-#..  :        -:..::++              :::::.:*            
		           =.:.#::.::-=.:::::::-+    #:..::::.:::::::.::*   * :::#:....-#+-:..          *::.:=%             ::.:::::-            
		           -.:==:::-:+=:::::.:+       *.:::::.:::::::.:=      *::::::::===+::..:                            #.::::.-             
		          *...#-:::%:+-:::::*          *::..:..:::.:::-        #.::::::+-=%::::-                            =::.:::%             
		          ::= *:::-%:+-::.:-            +.:...:...:.-:          .:.:...*-+@+::.+                           *.:::::=              
		         ==   -:::*@:+=..%               +.        #              *   .@:=@%::.+                          +.:.:::::              
		         .     ::=*@:-= %@@@@@@@@@@@@@#=   -     :. @@@@@@@@@@@@@@@%   +:+@@=::#                         +:.::...:               
		               =:+*@-.%##    =  +@@@@@      -   %          @@@@@%   @ *::+@@#::#                        +...:.:::                
		               #:**@-::.%     @@@@@@@%        -         @@@@@@@@   .-@=::#@@%-.#                       *.::::.=                  
		                =*- =::::-    @@@@@@@                   @@@@@@@#   *:::.:%@@@=:%                      =::...:+                   
		                %:  #.::::.+   @@@@@*                    @@@@@   .+::.:::@@@@#:@                    .-.:.::-.                    
		                     *:::@%++    :                             *:::-:=       @.+                   *.:.:::%                      
		              *       #..=                                      #=.+=    *    =:                 +:....:#                        
		              *:%   **                                             .=*   =  ==                         =@+                       
		                                                                                                        -:.+*- .%.               
		                                                                                                         +.                      
		
		'
		sleep 0.1
		clear
		echo '
		
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                   -                                                                                                             
		                 =-::::.:=#:                                                                                                     
		                 +:::  .:::::=+                                         -#+=*-                                                   
		                 =::       .::::=                                   +:.:...:::%                                                  
		                 :::.        :::::-%       .=++++==+=.           +.:::.     :.-                                                  
		                 :..         .::::::--:::.::::::::::::::::+=  *:.:::        ::=                                                  
		                 :::.         :::::::::::-:::::::::::::::::::::::.          :::                                                  
		                 =..          :.:::::::::::::::::::::::::::::::::           .:-                                                  
		                 #:..     ..::::::::::::::::::::::::::::::::::::::         :.:=                                                  
		                 =.:   .::::::::::::::::::::::::::::::::::::::::::.        ..:%               =#=::::::::-**                     
		                  +:::::::::::::::::::::::::::::::::::::::::::::::::.    ..:::+            *::::-:::::::::::::+                  
		                  ++::::::::::::::::::::::::::::::::::::::::::::::::::    ...+           *.:::.:-+*+**+=-:::::::=                
		                 +.::::::::::::::::::::::::::::::::.:::::::::::::.:::::  .:::*          #.::::-+*+********-:::::::               
		                : :.::::::::::::::::::::::::::::.::::-:::::::::::::::::.::::*          -.::::-**+       #**+-::::.-              
		                  .:.   :::::::::::::::::::::::::::::::::::::::::::::.::::::#%         =:::::*%           :*=::::::+             
		                 =     :     ...-::*-.:::::::::.:::::::.::%::::::::::  =-+:::-         :.::::*%             #::::::..            
		                #     =.           ++                    =             - #    +        :::::-+%             +::::::.*            
		            +.:*::  ::%::.=+-::::=  .=:.:::.:...     :. :-* .*=        =-#..  :        -:..::++              :::::.:*            
		           =.:.#::.::-=.:::::::-+    #:..::::.:::::::.::*   * :::#:....-#+-:..          *::.:=%             ::.:::::-            
		           -.:==:::-:+=:::::.:+       *.:::::.:::::::.:=      *::::::::===+::..:                            #.::::.-             
		          *...#-:::%:+-:::::*          *::..:..:::.:::-        #.::::::+-=%::::-                            =::.:::%             
		          ::= *:::-%:+-::.:-            +.:...:...:.-:          .:.:...*-+@+::.+                           *.:::::=              
		         ==   -:::*@:+=..%               +.        #              *   .@:=@%::.+                          +.:.:::::              
		         .     ::=*@:-= %@@@@@@@@@@@@@#=   -     :. @@@@@@@@@@@@@@@%   +:+@@=::#                         +:.::...:               
		               =:+*@-.%##    =  +@@@@@      -   %          @@@@@%   @ *::+@@#::#                        +...:.:::                
		               #:**@-::.%     @@@@@@@%        -         @@@@@@@@   .-@=::#@@%-.#                       *.::::.=                  
		                =*- =::::-    @@@@@@@                   @@@@@@@#   *:::.:%@@@=:%                      =::...:+                   
		                %:  #.::::.+   @@@@@*                    @@@@@   .+::.:::@@@@#:@                    .-.:.::-.                    
		                     *:::@%++    :                             *:::-:=       @.+                   *.:.:::%                      
		              *       #..=                                      #=.+=    *    =:                 +:....:#                        
		              *:%   **                                             .=*   =  ==                         =@+                       
		                                                                                                        -:.+*- .%.               
		                                                                                                         +.                      
		
		'
		sleep 0.1
		clear
		echo '
		
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		               #-==-++###                                                                                                        
		               -::::::::::::-**                                           =+*+                                                   
		               =::::.    .:::::::*-                                :**.::::::::                                                  
		               =.::         :::::::-#+-:::-:.::::.:..::-*#=   .+=-:::.::    :::#                                                 
		               #.:::          :::::::::::-:::::::::::::::::-+::::::.         :.%                                                 
		               *.::.          :::::::::-:-:::::::-:::::-:::::::::.          .::#                                                 
		                =::.        .::::::::::::-:::::::-:::::::::::::::            :.=                 -*%#%%#-                        
		                *...      ::::::::::::::::::::::::::::::::::::::::           :-              *::::::::::::::*                    
		                 +::   ..:::::::::::::::::::::::-:::::::::::::::::::        ..#            *.:::-::--:-::::::::*                 
		                  :::::::::::::::::::::::::::::::::::::::::::::::::::      .:.=          *-::::::-=*+*+-:::::::::#               
		                 #.::::::::::::::::::::::::::::::::::::::::::::::::::.    .::+          =..:::::+*++%##***--:::::.#              
		                =..::::::::::::::::::::::::::::::::::::::::::::::::::::..:.::+          -:::::++*#       +*+:::::.:*             
		               . ::::::--::::::::::::::::::::::::::::::::::::::::::::::::::::+          ::::::*+*          %=::::::-             
		                 .:::: *:.::::::::::.::::::::::::::.::::::%:::::::::::#.::::.::         :::::-+*            #:::::::#            
		             .  =           ...:::-@-::.:.:::::::::::..::*-:::.::::::.: :*:.  -         -::::=+#             -.:::::#            
		            +..*::.   #:     .     *                 .. =%::===..      :                *..::=++             +::::..*            
		           =.::#:::#::+::::.:.::.:. @ .:::.::.:::.::.::--  + :::#-:::. #..%.:- +          ...=               *::::::*            
		           :::*-::-*:#:::::::.:-#    %.:::.::...::::::=:    %..::::::::#::@::..#                             +:::::.*            
		          #.::@:::=+:@::::::::%       #.:.::....:...:=       #:.:::::..%::%-::.+                             :.:::::             
		         =:.:-%:::++:@:::::.=:         *:.::........*         .*:.::...#::#=:::-                            +:::::.*             
		         +:.=%#:::#+:%.....#            #.. .     .#            #.   ..*::#-::::                           =:::::::=             
		        ..:+  *::-*+:*.  .-              +:      .-               +   -=::%%:::.                           -::::::#              
		        #*    *::=**:=- =   :.::=+=--..-   #    +   :---:          -= #:::@@*::.                          +..::..+               
		              #:-+*%::#*+       :@@@@@       +--      =*@@%@@@@@@@%-#@#:::@@@-:.                         -:.:.::=                
		              =:=*%@::::-:    +@@@@@@                    %@@@@@-    =::::-@@@%..                       ::::::::=                 
		               ==%  -.::::*     @@@%                      @@@*     =.::::+@@@%::                      *:::::::+                  
		                     *::--:#                                    +..::=       @+:                     -.:::::-+                   
		              *       #.:+                                      =:+:+    +    +=                   =:.::::.#                     
		              *:%   **                                              -*   =  ++                         +%%+                      
		                                                                                                        -::*#- .#:               
		                                                                                                         +.                      
		
		'
		sleep 0.1
		clear
		echo '
		
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		               #+=------+**-                                                                                                     
		              *::::::::::-::::-+#                                       +***#*=                                                  
		              :-::::      ..:::::::-+*=::.::::::..:.:=*%=      =*+::..::.:::.:.#                                                 
		               -::.          .::::::::::::::::::::::::::::.:::::::::.:.  . .::.#                                                 
		               *:::           .:::::::::::::::::::::::::::::::::::          .::#                                                 
		               .:.:.         .::::::::::::::::::::::::::::::::::.            ..=                -*++*#*+:                        
		                #::.       ..::::::::::::::::::::::::::::::::::::            ::              +.::::::::::::.-*                   
		                 -:.     .::::::::::::::::::::::::::::::::::::::::.         .:=            #.:::::--::::::::::.-.                
		                 +:::   .::::::::::::::::::::::::::::::::::::::::::.       .:.%           -::.:::::-+++=-::::::::+               
		                 %:::::::::::::::::::::::::::::::::::::::::::::::::::      .:.-          -::::::-+***#%***-::::::..=             
		                +.::::::::::::::::::::::::::::::::::::::::::::::::::::.  .:..+          *.:::::=**+       #=:::::::::            
		               +. :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::=          #::::::**          :=:::::::+            
		              .   :::::%:::::::::::::::::::.::.:::::::::::%:::::::::::::.::::::         =:.:::-+#           :-:::::::            
		                : :::  *::::::::::-*:::::.:::::::::::..::*-:::.:::::::#::*:.  :          :.:..=*:            #.:::::.-           
		            *      *  +       =:.  @.-+.:::::::.:::::##*@@+#%*:::::::.@  -               +.:::-#             *::::::.:           
		           =..:%..:+ :*:::::...:: +-:                  -  -           +.:-#    -           **+               #.::...:-           
		           =..=*:::#:==:::::::::=-  -:::::::.:::.:::::*    *.:::::::::*-::%::..#                             #.::::::            
		          #...%:::=*:+-::::::::%     *..:::.....:.::.*      +-.:::::::*-::@::.:#                             #.:::::=            
		         -::::%:::++:%:::::::+        *:.:..........*         =.:..:..*-::@.:.:=                             =::::.:*            
		         *:::=+:::*+:#..   .*          -..        .*           :-. .. #-::@:.::-                            ::::::::             
		         :..+@=::-**:+:   -              =       .-              *    %:::@=::::                            =::::::*             
		        #.=: .-::=*#:--  +                .     +                  *  *:::@@-:::                           *.:::::+              
		        =#    -::++@::% %                   .= .                    #%::::@@@::=                          *:::::.=               
		              =:-**@-:::-  @@@@@@@@@@@@%            @@@@@@@@@@@@*:  -:::::@@@*.+                         +.::.::=                
		              *:=#+ *::::-=                                         :::::*@@@%.+                       :-::::::+                 
		                     *::::.#                                    .+==:=      .@+#                      #.:.::::*                  
		              +       #.=                                      *::::=    +    %#                    .=..:..:+                    
		              *:%   **                                              -*   =  ++                         =@##%                     
		                                                                                                        -:-##: .#:               
		                                                                                                         =                       
		
		'
		sleep 0.1
		clear
		echo '
		
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		               .%++==---===++*#-                                                                                                 
		              -::::::::::::::::::-% +#*--::::::::-==+#%#.           ==*##++==+*                                                  
		              =::::.        :::::::::::::::::::::::::::::::-**=::.::.::::::..:.#                                                 
		              #:::            ::::::::::::::::::::::::::::::::::::::.        .:*                                                 
		              ..::.          .::::::::::::::::.::::::::::::::::::.           ::=                +=-...::-=*                      
		               #.::         .:::::::::::::::::::::::::::::::::::.             .#             =:::::::::::::::-+                  
		                -:..      .:::::::::::::::::::::::::::::::::::::::           .:=           *.:::::-::::::::::::.%                
		                =::.     .:::::::::::::::::::::::::::::::::::::::::.        .:-           -:::::::::-=-=:::::::::-               
		                 *-::   ::::::::::::::::::::::::::::::::::::::::::::.      :..#          *.:::::-****##*+*:::::::::-             
		                #.:::::::::::::::::::::::::::::::::::::::::::::::::::.    :::-           -:::::=*+*      .%=:::::::-             
		               +  :::::::::::::::::::::::::::::::::::::::::::::::::::::.::::.+           ::::::+*          --:::::::+            
		              :   ::::.*::::::::::::::::::::::::::::::::::::::::::::::::::::.:           .::::-++           -:.:::::+            
		             .    ::.  %.::::::..:%:::::..:::::::::::::::::::::::::::-:::#:.  =          :::.:=+:            #.:::::=            
		            *   -     #    ..:**=-=-:+#.:.:::::::::::+*%@#*=-.::::::::   *..             -..::-+.            :::::::-            
		           = .:%-.:   #            =           ...:..  = =    :       -                     *:                :::.:.=            
		           =.::#:.#  =+::.:.::.:.#  =..:.:::.:::::::::=   :-::..::.:::# ..#..  -                             -::::::+            
		          #..:@-::@:.*=:::::::.=.   =.:::::..::.::.::+      =..:::::::@::.@::.:#                             *::::::=            
		         :::::%:::@:-%=:::::::*      .....  . .. ...+        *:::...:.%:::%:.:.#                             +::::::#            
		         *:::+=:::@::%:...  -:         -.. . ..   .+          .+.. .  %:::#-.::%                             :.::.:.-            
		         -::.@-::-%::*:.   *            =         #             *     *:::@+::.#                            *.:::..+             
		        *.:* @::-+%-:+-  .-               -     :                 =   =:::@@-::#                           -:.:::::-             
		        *:#  %::-+#*:-# %                   -  +                    %#::::@@@::#                           -:::::.*              
		             #::=+##::+=+ @@@@@@@@@%%#+             @@@@@@@@@@@@*   =.:::-@@@=.+                          -::::.:#               
		             -::=*--:.:::*                                          :::::+@@@@:.                        =:.:..:.*                
		              %      *::::.#                                    :*##-+      .@=                        *.:::::.#                 
		              *       #.=@=*                                   @::.:+    *    @                      .-.:::::*                   
		              *:%   **                                              -*   =  ++                         +@#++-                    
		                                                                                                        =:-#*: .#-               
		                                                                                                         +                       
		
		'
		sleep 0.1
		clear 
		echo '
		
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                 *.---:::=+*                                                                                                     
		                 -::::-::::::::+-                                 :##+-::-::-=                                                   
		                =-:::       ::::::-#     .=**%%%%#*+=         %=-:::::::::::::=                                                  
		                *::::         ::-:-::::-:::-:::-:::::::-:-*+---::::.       :::#                                                  
		                #::::          .:::::::::::-:-:::::::::::::::::::          :::@                                                  
		                *:::.        .:-:::-:::-::::::::::::::::::::::::            ::#                                                  
		                =:::.      .:::::::::::::::::-::::::::::-::::::.           .::=               ===---=#*                          
		                 -::.     :::::::::::::::::::::::::::::::::::::::         ..:.-            :-:::::::::::.+                       
		                 %....  ::::::::::::::::::::::::::::::::::::::::::..      .::-            #.:-::::-::::::::#                     
		                 *:::::::::::::::::::::::::::::::::::::::::::::::::::.     ::*             *:::----=-::::::.*                    
		               :  ..::::::::::::::=-::::::::::::::::::::::::::::::::::::::...*                     -#+=::::::*                   
		                  ..:::-:::::::::-=::::::::::::::::::::::::::::::::::::::::.-                         @+=:::::                   
		                      :  ..:::::::=::::.::::::::::::::::.*::::::::::::::::::*                          #*=::::#                  
		                      +           -. ....                      .:::::::::==:.#                         #*+-:::*                  
		           ...#:.:::.=:::..:::=..+#*:-:::::::.::::::::::# + *             +  .                         **=::::#                  
		          -..+-:::*::*:::::::::-*   -::::::::::::::::::=   .=          +  :   =                        %+-::::*                  
		         %:::%::::%::%::::::::*     *:::::::::::::::::::     *.:::::...%::-+. #                        #=:::.-                   
		        =:..:+:::-#::#:..:::-+       =::::.::::.:.:::-=       *-:.:::.:*.:.#..*                       ==::::.#                   
		        *..:+::::*+::%.....#          -.......  ....-.         =......==:::@.:*                       +.:::::.                   
		        -::-@:::=#-:.%   .=                        +             -    *-:::%.:+                      #:.::::+                    
		       -.-: #:::**=:.%  -                +       ..               +   *-:::%::+                     +.:::::-                     
		        #   #::++*+::+.%                   -   ..                  + =::::.@::*                    +::.::..*                     
		            +::+*@#:::+*  #@@@@@@@@@@@@              @@@@@@@@@@*     =:::.:%.:#                   *::::..:*                      
		             --+# %::::-                                         :  +.::::-*..#                  +:.:.:::*                       
		             *=#- +::::%+                                           *:::::++::-                  -:::::::.                       
		             :++  =:::....#                                     +*++=:::::@:.:                  +.:::.:.*                        
		                  +...:+=-#                                    *.:..:::::-@+.-                  *:.:::..+                        
		                  %...::                .    #    *                +:::::*@%:+                  *.:.::::-                        
		                  #....*                .:....:::=.                +:::::@@@-+                  +.::.:::                         
		                     *.-                ..       -                 +:=       #                  -::::.::                         
		              *       ##@#               *       =                .++    +                       .::::.:                         
		              *:#   **                                              -*   =  ++                         +%=                       
		                                                                                                        =::#*: .#-               
		                                                                                                         +                       
		
		'
		sleep 0.1
		clear 
		echo '
		
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                   %==:-##+                                                                                                      
		                   +:::::-::::@.                                    .%%:--::#                                                    
		                  --:::::::::::::*                              =#=-::::::::-                                                    
		                  *:-:       ::::::-*                        +*:.::::    .:::+                                                   
		                  *:::        .:::::::-.:.:::-::--:---=+##*+::::::.       ...*                                                   
		                  +::.          :::::::::::::::::::-::::::::::::.         :::+                                                   
		                  -:::        :::::::::::-::::::::::-:::::::::-.           ::=                                                   
		                  =:::      :::::::::::::::::::::::::::::::::::           .::=                  *:::::.=*                        
		                  *:::    :::::::::::::::::::::::::::::::-::::::.          ::=                 *:::::::::-%                      
		                  *.... ::::::::::::::::::::::::::::::::::::::::-::       ..:-                  +::::::::::#                     
		                 *:::::::::::::::::::::::::::::::::::::::::::::::::::.   ....=                   *+-::::::::=                    
		               =   .:::::  :::::::==::::::::::.:::::::::::::::::::::::::::.::#                     #-::::::.*                    
		                   .:.-*   :      +                . .      ..::::::::::::::.*                     =*-::::::#                    
		                      =          .*:.........            +          :.:::*::-                       #+::::::#                    
		                .::::#-:::::::.*@@@%@*::.:::::::::::::=-#@-:.:.:        .=#.=.                      *+::::::#                    
		           =..::::+:-@:::::::=:-*  %:::::::::::::::::::.% .*:*#...-.:::.  +  *                     =++:::::-                     
		          *::#:::-*:-%:::::::.%    .+::::::::::::::::::#    +::::::::::=+:-* *                     %+-::..:#                     
		         *.::*:::*=:-*.:::::-+      :-:::::::...::.:.:+      :-::::::::#-::%:-                    *+=::::.:                      
		         :::#.::-%:.-+...::+         +...............*         #....:::#:::@::                   .*+-:::::*                      
		        #..:%:::=@---*  ..#           =  .      ....@           #.. ..-=:::#:..                  *+-:..::#                       
		        =.+ %:.:*%::.%  -:              :         .              -.   #::::*-..                 #=:.::::=                        
		        *   %::**#:::% :                 *       +                 +  *:::.*-.=                *+::::::=                         
		            #:=**#:::-@       -+*#%%#*#    :.  +     @@@%*-         *#::-:.*-.-               %-..:..::-                         
		            +:=*#@::::%  +@@-                            .+#@@@@@@.  #:::::#:.=              =::::::::%                          
		             -=+*-:::.%                                              *::::.%::-              -..:::::*                           
		             ++*  -::::+.                                            =:::::%.:              +.::::::.-                           
		              :   :..:...-                   :                   +*-.::::::#:-              -.::::::-:                           
		                  -:.:.:.:-             :   %:+=  -             -.::.:::::-+.+              .::...:.-                            
		                  -:::#                  =..      *                 -:::::%::+              ...:::::-                            
		                  -..:+                  %        .                -::::::@+:+              -.:.::::-                            
		                 :....::                 -         +               %::::.-@%.*              =:.::..::-                           
		                 #.::.:@:                          +               %:::::#@@=+               +:::.:::*                           
		                     *=@@#                         .              :*:=       #                :::..:.*                           
		              *       @@@@%@:            :        *             *@%==    +                    %:.....=                           
		              *:%   **                                              -*   =  ++                         =%+                       
		                                                                                                        -::##: .#:               
		                                                                                                         +                       
		
		'
		sleep 0.1
		clear
		echo '
		
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                   %-=--##+                                                                                                      
		                   +:::::::::-%.                                    :%%---::#                                                    
		                  -----::::::::::*                              =#=-::::::::=                                                    
		                  #:-:       ::::::-*                        +*:.::::    .:::+                                                   
		                  *:::        .:::::::-:::::::-::-:---=+#**+::::::.       .::*                                                   
		                  +::           ::::::::::::::-::::::::::::-::::.         .::+                                                   
		                  -:::        ::::::::::::::::::::::::::::---:-:           ::=                                                   
		                  =:::      :::::::::::::::::::::::::::::::::::           .::=                  +::::::=*                        
		                  *:::    :.::::::::::::::::::::::::::::::::::::.          ::=                 *:::::::::-%                      
		                  *:::. :::::::::::::::::::::::::::::::::::::::::::       :::-                  +::::::::::#                     
		                 #:::::::::::::::::::::::::::::::::::::::::::::::::::.   :::.=                   *=:-:::::::=                    
		               =   ::::::. :::::::=+:::::::::::::::::::::::::::::::::::::::::#                     #-::::::.#                    
		                   .:.:*   :      +                .....    ..::::::::::::...*                     -+-::-:::#                    
		                      =          .*:......:..  .         +          :.:::*::=                       #+::::::#                    
		                .::::%-:::::::.*@@@%@*::..::::::::::::-=#@-:..:.         =#.-:                      *+::::::*                    
		           =.:::::+:-@:::::::-:-*  %:::::::::::::::::::.# .*:*#.::-.:::.  +  *                     =++::::.-                     
		          +::#:::-*:-#:::::::.%    .=::::::::::::::::::#    *::::::::::=+:-+.*                     #+=::.:.#                     
		         #:::+:::*-:-*:::::::+      --::::...:::::.:::*      :-:::::::.#-:.#:=                    *+=::::.:                      
		         -::#.::-@::-=...:.+         +.....:.... ....+         #.::::::#:::@::                   .*+::::::*                      
		        *..:%:::=@:--* . :#           -. .        ..%           #.....-=:::#:.                   ++::..::#                       
		        -.+ #:::*%::.%  :-              :         .              -.   #:::.*-:.                 #=::::::=                        
		        *   %::**#:::% :                 #       +                 -  +::::*-.=                *=:::.::=                         
		            %.-++#:::-@       -+*#%%###    -.  +     @@@%*-         *#:::::*-.-               %-..:.::--                         
		            +.=+#@:::.%  -@@-                            .+#@@@@@@.  %:::::#:.=              =:.::::::%                          
		             :++*-:::.%                                              #.::::%::-              -:::::::*                           
		             +=*  -::::*                                             +:::::%.-              =.:::::..-                           
		              -   :::::::-                   :                   +*-.::::::#.-              -::.::::-:                           
		                  -:..::.:-             :   %:+=  :             -.:..:::::-+.=              ...:.:.:-                            
		                  :::.#                  +..   .  #                 -:::::#:.+              ...:::::=                            
		                  -:.:+                  %        .                -::::::@=:*              =..:..:::                            
		                 :.:::--                 -         +               #:.::::@%:+              =.:.:.:::-                           
		                 #.:..:@.                          *               %:::::#@@-+               +:::::..*                           
		                     *=@@%                                        :%.+      .*                -::::.:*                           
		              +       @@@@%@.            :        *             *@%=+    *                    %::....-                           
		              *:%   **                                              -*   =  =+                         =%=                       
		                                                                                                        =::*#- :#:               
		                                                                                                         =                       
		
		'
		sleep 0.1
		clear
		echo '
		
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                     :*=                                                                                                         
		                    #:----=#=                                                                                                    
		                   --::-::::::=%                                    ++-:--::                                                     
		                   #-::   .:-:-::=#                             =*-:::::::--*                                                    
		                   =:-       .:::::-*=                       +=:::::.    :::-.                                                   
		                  -:::         :--:::-=%#=-:::-:::::-###+ *=-:::::       .:::+                                                   
		                  +.:.          :::::-::::--::::-::---:::-::::::.         :::#                                                   
		                  *::.        ::---:--::-------:::::::::::::::-           :::#                      =::.-=                       
		                  #:::     .::::----::::-:-:-:-:--::--::-::::::          .:::*                      =::::-#                      
		                  %:::    :::::::--:-:::--::::--::::-::-:-::::::          .:.*                      *::-:::+                     
		                  @:::: .::::::--::--::::::-:--::::-:::-----:::::.       ..::%                      +-:::::::                    
		                 +.:::::::::::::::-::::::-:::-:-::--:::::-::-:-::::::    ::::#                      #.:::::-.                    
		                   ::::::.  ::::::#::::-:::::::::::::::::::::::::::::::::::::*                      =:-:-:::                     
		             :                    %                       = .:::::..::.:::.:-                      *.::::::*                     
		            .      .:-*.  .::::::-#::::.:.::::.:....     :            ::::.:*                     .-::::::+                      
		           .  .::::::%::::::::#%*#%---:::::::::::::::-##%@*=:::...        # .                     =:::::-*=                      
		          +.:*::::#==*:::::::::#   +::.--:.::::::::-::::# :=:+@-::::::.+     -                   #:--::-+*                       
		         *.:==:::=*:+=:::::::*     #:::::::...:::::::::#    %::::::::::+::.  #                  *::::.-+@                        
		         -::%::--@::+-::.::-=       *.:.::.:.:::.::.:.*      +-:::::::.%:::#:%                 #::::.=+%                         
		        *:.==:::-#::=-...:+          +..........  :..+         +.:.::::#:::%:+                *:::::=+%                          
		        ::*#.:::#+:::=  ::            +.          .::           =.   .+-:::*:=               #.::::-+%                           
		       +-  -.:.:#=:::# =                #         %               *   #:..:*-:              .:-::::+%                            
		       -   =.::+%=:::#@                   -     #                  = ::::::=-:              =....:++                             
		           -::-+%=:::=:     .+@@@@@@@@@=    +:+      @@@@@@*=        %:::::=--             *::.::-+%                             
		            :.++%+:::=   -@-                                 -*@@@:  -:::.:+:=             -..::.=#                              
		            +:+#*+:::=                                               .:::::*-=            .::::.:+*                              
		             =#  +:::-#-                                            *::::::%:*            *..::::+                               
		                 *.::.:::*                   #                   =-...:::..%.#            %..::::*                               
		                 #.:.:::.+               +:*::#+:*.             .::::::::::#.%            #.:::::+                               
		                 #:::-                   @.    ...%               .#.::.::-+:=            -.:::.:=                               
		                 *:::::                  +        =                #::::::*-::             ::.::::-                              
		                 +.:::%                           .                *:.::::@+.:             *:..::.*                              
		                 -.:::@@                =         -                =:.::.:@%:=             ...:.:::                              
		                -:..::@@@#              -         *                -:::::#@@+#              *:::::.=                             
		                     #@@@@@-             .        %              %@-:+       @               :::.::=                             
		              +       @@@@@@@@           *                    #@@@@:+    *                   *::...:                             
		              *:#   **                                              -+   =  ++                         +@-                       
		                                                                                                        =::##: .#:               
		                                                                                                         +                       
		
		'
		sleep 0.1
		clear
		echo '
		
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                     =-:=%#                                                                                                      
		                    #--:--::-+=                                      .##==-*                                                     
		                   ---:-:-::::-:#*                               #*---:--:-:%                                                    
		                   #-:-    ::::-:-:%                         +*:.:::    ::--+                                                    
		                  .=::.       :-:::--%   .:-=+++=-:.      .*::::::       :::-.                                                   
		                  *:::          :::-::::::::::::--:--:-:::-::-:::        .:::.                                                   
		                  #:::          .::.::::-::--::-::::::-:::::::::          ::-.                                                   
		                  *:::       .:-::::-:-:::::::::-------:--:::::          .::.:                                                   
		                  +:::.    ::::::::-::::::-:::::::::::::::--:::.          .:::                          :-:::-                   
		                  =::::  ::::::::::::-:::::-:::::::::::::-:-::::.        ..:-.                         +:::::=                   
		                  @=:::::::::::::::::::::::-:-::::::::::::::::::::.      .:.=                        =-::::::*                   
		                +  ::::-::   :::::-+:::::::::::::::::::::::::-:::::::::.::::+                      -*::::::::#                   
		              %        -          -                   ....-:::::::::::::::::#                     *::-::::::#                    
		                      *        .. +:.:::...                         .::::::.#                   #::::::::::@                     
		           -    :::::%-:  .:::*@@@@@%*:::::::::::::::::--%:::..          ...*                 -=::::::::-#                       
		          +:::::::==-%::::::-:-@-  %::::::::::::::::::-:+ *++%%-:.. .                        *.:::::::-+*                        
		         =:::%:::-@:+=::::::.#-     =::::::::::::::::::=    *.:::::::::*---  +              *.::::::-+%                          
		         =::==:::*+-#-:::::-+       -:::::::::::::::::::     #.::::::::%::+-.=             *:::::::=*+                           
		        %.:-%::::@::@...::%          *..:.............        :+-:::..:#::-*.-             :::::::=*+                            
		        =.:==::-=@::#:..:=            - . .   .   ..+           %....:-+:::%:-:           +.:::::-++                             
		       *:#:*.::-+@::*  =                :          :             *.  .+-:::#:.:          +.:::.::=%                              
		       @   #:::*+@::-*%                  .       +                .=  #::::*-::          *.::::.-*                               
		           *.:-++@::.=:            .:.     #   -     *%+.           +.-::::+-:-          =.::::.-#                               
		           ::.=**@-::=   =@@@@*=.                       :+#@@@@@%.   @:::.:+-:           :.:::::-=                               
		            -:+# *:::*                                               *:::.:+:=           :::::::-:                               
		            *=*  +:::-                                               :::::.*:*           +.:::::-.                               
		             #   =.:::.=-                    .                     #=::::::%.*           %.:::::::                               
		                 *::::...*              #   # *                 =.:..::::::@.+           :.:::.::#                               
		                 #:::***#=               #: .   ::+             =:..::::::-+:             %:.:..:+                               
		                 %:.:+                   +        #                %::::::*::              :::::::+                              
		                 +:.:=.                                            *.:::::@.-              *::::::=                              
		                .::::=@                 =                          +:::::+@*:               +::::::#                             
		                *.:::=@@=               =         .                =.::::%@@--               :::::::                             
		                =.::-:@@@@                        =               @-.::::@@@+%               +::::::+                            
		                     *@@@@@@*            *        #             @@@::=      .@               *::::::#                            
		              *       @@@@@@@@@@-         -      #          =@@@@@@:*    +                   #.:::::%                            
		              *:%   *#                                              -*   =  ++                         +@-                       
		                                                                                                        =::##- .#:               
		                                                                                                         +                       
		
		'
		sleep 0.1
		clear
		echo '
		
		                                                                                                                                 
		                                                                                                                                 
		                      -=                                                                                                         
		                     %----=@*                                                                                                    
		                    @----:::-:*#                                  =%*-:---+                                                      
		                    +--   :----:-#.                           .%=-----:::::#                                                     
		                   %-::      :-::::=-                       %-:::::.    :---:                                                    
		                   *::         ::-:::#+*%*+=---===*%@%:   +--:::::      .:::@                                                    
		                  .-::          -:::::-:::::-:-:-:---:---::::::-.         ::#                                                    
		                  %--.          :::::----::-:-:-::::-------:-:-           ::+                                                    
		                  %:::.     :::::::--:-::--:-:::--:-:-:-:-:-:::          .::=                                                    
		                  *:::    .::::::::-::::::::::::::::::::::--::::          ::+                                                    
		                  @::::.:-:::::::-:::-:::::-:::::::-::::-:-::::::.       :::+                                                    
		                 + :::::.::..::::::::-:::::::::-::::::::::::::::::::.    :::*                      %-:::::..                     
		               #   .:::::    :::::*=......   ...::::::::::::::::::::::::::::%                   :+:::::::::*                     
		                      =           :                      -     ..   .:::::::+                 +=.::::::::-=                      
		            -    ::::#.    :::::-=%=:-:::::::::::::::::::*:..           :::#                 +:::::::::-#                        
		              .:::-:=#:  :::-@+:@  +-::::::::::::::::+%%@%%+:::::.          -              =:.::.::::=#                          
		          *::=::::%:*:::::::::%    *:::::::::::::::::::-:  #.:#+:::. ::---                *:::::::-##                            
		         *..*=:::@--%:::::::*=      *::::::::::::::::::+    +=::::.::::*-:+  -           .:.::::-+%                              
		        *::-#:::=%--%:::::=*         *:.:.::..........+       #::::::::%-:.#             #::::.-+@                               
		        -.:@-::-#+::%...:#            #...   .......::         =-:::::-#:::*-:           :::::=+#                                
		       +.+=%:::+#=::%  .+              *           #             #. ..=+:::=+::         -.::::*+%                                
		       #*  %::-*%-::# =                 +        -.               #.  %::::-+.=         *::::-+*#                                
		           #.:=*#=:::@                    *    .=                  -.+::::::*:-         -..:.:+*                                 
		           =.-+*%+:::#     =@@@@@@@@@@@     *+      *@@@@@@@*:       @:::::-*:.          :.:::+*                                 
		            --**%#:::*                                       .*@@@%  #:::::==-           *.:::=+#                                
		            ++*+ #:::+                                               +::::.*:*           # ::::+@                                
		             +.  #.::%-                                             +::::::#:*            +....=+.                               
		                 %:.::.:+               -   :@    -              #-:::::::.@.=             -...:=#                               
		                 #..:--:.-              :@#:..-*@@             ...::::::::=%:=              .::::-+                              
		                 #.::+  -                :      .:.             *##%-:::::*-:=              =.:::::.                             
		                 +...*                  +         *                #.:::::@-:=               *:::..=                             
		                 ::::*                  #         @                +:::::=@=.+                *::.::#                            
		                -::::*@                 @         @                -:::::#%%:+                 -.:..:                            
		                *.::-+@@+               %         *               -:.::::@@@-*                 :.:::.*                           
		                -.::-+@@@@+             =                        *@.::::-@@@#=                #:::::-                            
		                     #@@@@@@@+           *       %             @@@@::=      .*+              =.:::::%                            
		              *       @@@@@@@@@@@%:        -.  ..          +@@@@@@@:+    *    @             -:::::.#                             
		              *:#   *#                                              -*   =  ++                         +@=                       
		                                                                                                        -::##- .%:               
		                                                                                                         +                       
		
		'
		sleep 0.1
		clear
		echo '
		
		                                                                                                                                 
		                                                                                                                                 
		                      -=                                                                                                         
		                     %----=@*                                                                                                    
		                    @-:--::::-*#                                  =%*-----+                                                      
		                    +-:   :::--:-#.                           .@--:----::-:#                                                     
		                   %-::      ::::::==                       %-::--::    ::--:                                                    
		                   *::         ::::-:#=*@#+=-=-===*@@%:   +-::::-:      ::::@                                                    
		                  .-::          ::::::---:::-:::-::--:::--:::::-.         ::#                                                    
		                  #:::          :-:::::::::::::-::::::::----:--           ::*                                                    
		                  %:::.     .:::::::--:--:--:-:--::::::-:-:::::           ::=                                                    
		                  #::-    .:::::::-:::::-:-:::--:::::::::-:-:::-          ::*                                                    
		                  @-:::.:-:::::::::-:::---:-:::--::::-:::::-:-:::.       :::+                                                    
		                 + :::::.::.:::::-:::::-::-::::-:-::::::-:::::::::::.    :::#                      %::::::..                     
		               #   .::::.    :::::*+. ...... ...:::::::::::::::::::::::::::-%                   :+:::::::::*                     
		                      =           .                      -     ..   .::::::-+                 +=.::::::::-=                      
		            =    .:::#.    ::::::=%=--:::::::::::::::::::*:..          .:::%                 +.::::::::-#                        
		              ::::::=#:  :::-@+:%  +-::::::::::::::::+%%@@%+::::::          -              =.::::::::=#                          
		          *::=::::@:#::::::::.%    #:::::::::::::::::::-:  #.:#=:::  ::---                *:::::::-#*                            
		         *..#=:::@--%:::::::*-      #::::::::::::::::::+    +=:::::::::*-:+  -           .:.::::-+%                              
		        *::-#:::=%-:%:::::=*         *..::....:.....:.+       #:::::::.%:::#             #::::.-+@                               
		        -.:@-::-#+::%....#            * ... ... ....::         --:::::-#:::*-:           :::::=*#                                
		       +.==#:::+%=::%. .+              *           #             #. ..==:::=+::         =.::::++%                                
		       #*  @::-*%-::% -                 *        =:               #   %::::-*.-         *::::-*+#                                
		           #::++%=::-@                    *    .-                  -.=-:::::*.-         -..:.:+#                                 
		           =.-+*%+:::#     =@@@@@@@@@@@     *+      +@@@@@@@*.       @:::::-*:.          -::::+*                                 
		            --**%#:::*                                       :*@@@%  #:::::==-           *.:::=+#                                
		            ++*= #:::*                                               +::::.*:*           # ::::+@                                
		             +.  #:::%-                                             +::::::%:*            +::.:=+                                
		                 %:..:..+.              -   :@    -              *-::::::::%.+             -.:::=#                               
		                 #:::-:..-              :@#-. -#@@             ...::::::::=%.=              :::::-+                              
		                 #.::*  -                :      .:.             *##%-:::::*-:=              =.:::::.                             
		                 *:::*                  +         *                #.:::::@=.=               *.::.:=                             
		                 -::.*                  #         @                +:::::=@=:=                +:.:::#                            
		                =::::*@                 %         %                -:::::#%#:+                 -::..:                            
		                +.::-*@@*               %         *               -::::::@@@-*                 ::::::*                           
		                :..:-+@@@@+             =                        *@:::::-@@@%=                #:::::-                            
		                     %@@@@@@@*           *       %             @@@@:.=       *+              =::::::%                            
		              +       @@@@@@@@@@@%:        :: ..           +@@@@%@@:+    +    @             =:::::.#                             
		              *:%   *#                                              -*   =  ++                         =@=                       
		                                                                                                        -:-##- .%:               
		                                                                                                         +                       
		
		'
		sleep 0.1
		clear
		echo '
		
		                                                                                                                                 
		                                                                                                                                 
		                      -=                                                                                                         
		                     %----=@*                                                                                                    
		                    @-:--::::-*#                                  =%*-----+                                                      
		                    +-:   :::--:-#.                           .@--:----::-:#                                                     
		                   %-::      ::::::==                       %-::--::    ::--:                                                    
		                   *::         ::::-:#=*@#+=-=-===*@@%:   +-::::-:      ::::@                                                    
		                  .-::          ::::::---:::-:::-::--:::--:::::-.         ::#                                                    
		                  #:::          :-:::::::::::::-::::::::----:--           ::*                                                    
		                  %:::.     .:::::::--:--:--:-:--::::::-:-:::::           ::=                                                    
		                  #::-    .:::::::-:::::-:-:::--:::::::::-:-:::-          ::*                                                    
		                  @-:::.:-:::::::::-:::---:-:::--::::-:::::-:-:::.       :::+                                                    
		                 + :::::.::.:::::-:::::-::-::::-:-::::::-:::::::::::.    :::#                      %::::::..                     
		               #   .::::.    :::::*+. ...... ...:::::::::::::::::::::::::::-%                   :+:::::::::*                     
		                      =           .                      -     ..   .::::::-+                 +=.::::::::-=                      
		            =    .:::#.    ::::::=%=--:::::::::::::::::::*:..          .:::%                 +.::::::::-#                        
		              ::::::=#:  :::-@+:%  +-::::::::::::::::+%%@@%+::::::          -              =.::::::::=#                          
		          *::=::::@:#::::::::.%    #:::::::::::::::::::-:  #.:#=:::  ::---                *:::::::-#*                            
		         *..#=:::@--%:::::::*-      #::::::::::::::::::+    +=:::::::::*-:+  -           .:.::::-+%                              
		        *::-#:::=%-:%:::::=*         *..::....:.....:.+       #:::::::.%:::#             #::::.-+@                               
		        -.:@-::-#+::%....#            * ... ... ....::         --:::::-#:::*-:           :::::=*#                                
		       +.==#:::+%=::%. .+              *           #             #. ..==:::=+::         =.::::++%                                
		       #*  @::-*%-::% -                 *        =:               #   %::::-*.-         *::::-*+#                                
		           #::++%=::-@                    *    .-                  -.=-:::::*.-         -..:.:+#                                 
		           =.-+*%+:::#     =@@@@@@@@@@@     *+      +@@@@@@@*.       @:::::-*:.          -::::+*                                 
		            --**%#:::*                                       :*@@@%  #:::::==-           *.:::=+#                                
		            ++*= #:::*                                               +::::.*:*           # ::::+@                                
		             +.  #:::%-                                             +::::::%:*            +::.:=+                                
		                 %:..:..+.              -   :@    -              *-::::::::%.+             -.:::=#                               
		                 #:::-:..-              :@#-. -#@@             ...::::::::=%.=              :::::-+                              
		                 #.::*  -                :      .:.             *##%-:::::*-:=              =.:::::.                             
		                 *:::*                  +         *                #.:::::@=.=               *.::.:=                             
		                 -::.*                  #         @                +:::::=@=:=                +:.:::#                            
		                =::::*@                 %         %                -:::::#%#:+                 -::..:                            
		                +.::-*@@*               %         *               -::::::@@@-*                 ::::::*                           
		                :..:-+@@@@+             =                        *@:::::-@@@%=                #:::::-                            
		                     %@@@@@@@*           *       %             @@@@:.=       *+              =::::::%                            
		              +       @@@@@@@@@@@%:        :: ..           +@@@@%@@:+    +    @             =:::::.#                             
		              *:%   *#                                              -*   =  ++                         =@=                       
		                                                                                                        -:-##- .%:               
		                                                                                                         +                       
		
		'
		sleep 0.1
		clear
		echo '
		
		                                                                                                                                 
		                                                                                                                                 
		                      -=                                                                                                         
		                     %----=@*                                                                                                    
		                    @----:-::-*#                                  =%*-----+                                                      
		                    +::   :----:-#.                           .@--:-:::::-:#                                                     
		                   %-::      ::::::=-                       %-::-:::    ::--:                                                    
		                   *::         ::::::#+*@#+=---===*%@%:   +-:-::-:      .:::@                                                    
		                  .-::          :::::-::::-:-:-::::-:-::-::::-:-          ::#                                                    
		                  #::.          :-::::::::-::-::-:::::::----::-           ::+                                                    
		                  %:::.     :::::::-----:--::-:---:::::-:---:::           ::=                                                    
		                  #:::    .::::::-::::::::--:::::::::-::---::::-          ::*                                                    
		                  @-::::::::::::::-::::::::::::-::::::::-:-::::::.       :::+                                                    
		                 + :::::.::..:::::::::-::::::::-:::-:-::-::-::::::::.    :::*                      %-:::::..                     
		               #   .::::.    :::::*+.......  ...::::::::::::::::::::::::::::%                   :+:::::::::*                     
		                      =           .                      -     ..   .::::::-=                 +=.::::::::-=                      
		            =    .:::#.    :::::--#+--:::::::::::::::::::#::.          .:::%                 +.:::::::::#                        
		              .:::::=#:  :::-@+:%  +-::::::::::::::::+%%@@%+::::::          -              =::::.::::=#                          
		          *::=::::@:#:::::::::%    *:::::::::::::::::::-:  #.:#=:::  ::---                *:::::::-##                            
		         *.:*-:::@--%:::::::*=      #::::::::::::::::::+    +=:::::::::*-:+  -           .-:::::-+%                              
		        *::-#:::=%--%:::::=*         *:::::.........:.+       #::::::::%-::#             #::::.-+@                               
		        -.:@-:::#+::%...:#            *   . ........::         --:::::-#:::*-:           :::::=*#                                
		       +.++%:::+%=::%. .+              *           #             #. ..=+:::-+::         -.::::++%                                
		       #*  @::-*%-::% -                 *        =:               *   #::::-+.=         *.:::-*+#                                
		           #::++#=::-@                    *    .-                  :.=::::::*.-         -..:::##                                 
		           =.-+*%+:::#     +@@@@@@@@@@@     *=      +@@@@@@@*.       @:::::-*:.          :.:::+*                                 
		            --**%#:::*                                       .*@@@%  #:::::==-           *.:::=+#                                
		            ++*= #:::*                                               +::::.*:*           #..:::*@                                
		             +.  #.::%:                                             +::::::%:*            +..:.=+                                
		                 %:.::.:+               -   :@    -              *-::::::::@.+             -..::=#                               
		                 #:::::..-              :@#-..-#@@             ..:.-::::::=%.=              ..:::-+                              
		                 #.::*  -                :      .:.             *##%-:::::*-:=              =.:::::.                             
		                 *:::*                  +         *                #.:::::@=:=               *.::..=                             
		                 -:::*                  #         @                *:::::-@+:+                +:::::#                            
		                =::::*@                 @         @                -:::::#%#.+                 -:::::                            
		                +.::-+@@+               %         *               -::::::@@@-*                 ::::::*                           
		                :..:-+@@@@+             =                        *@:::::-@@@#=                %:::::-                            
		                     %@@@@@@@*           *       %             @@@@::+      .*+              -::::::%                            
		              +       @@@@@@@@@@@%:        -. ..           +@@@@%@@:+    *    @             -:::::.#                             
		              *:#   **                                              -*   =  ++                         +@=                       
		                                                                                                        =:-##- .%:               
		                                                                                                         +                       
		
		'
		sleep 0.1
		clear
		echo '
		
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                   %=:+@=                                                                                                        
		                  +-:-----+@*                                        :@%*----                                                    
		                  #--:--::----*+                                 ##-----::--=                                                    
		                  *---     .:-:::#*                           @+::-:-:   ::--+                                                   
		                  =-:        .:---:=@ :*%%%*+++++*#@@#:    %=::-:::       .:-#                                                   
		                  -::          :-:::::::--:::-::--:------=-=--:::         .::%                                                   
		                  =::           ::-:-::-:-::-::-:-:-:-::-:-:-::-           ::#                                                   
		                  -::        :----:---:-:-------:-:-----::--:::            ::#                                                   
		                  =:-.    ::--::-:-:-:--:::-::-::--:-:---:-:--::           ::#                            +%*                    
		                 ::-::  :.::-::--:-:---:::-::--:-----::-:-:::-:-:.        :::*                        ==::::::*                  
		                 *:::::::::::-:-:--::-::::-:--::-:-:-:::::-:::::::::.     :::=                      *:::-:::::*                  
		               # .::.::::.  .:::::#-:::::::::--:-::::::-:--:--:::::::::: .:::-                    -:::::::-::#                   
		                      :           =          . . ..:.::::::::::::::...::::::*                    *:::::::::=+                    
		            #        .- ..        =                       .            .:.::*                   #:::::::-+%                      
		           #.:::::=-:@-:::::::*%%@+#*%*::::.::::::::::::-%-:                =                  ::.::::-+%                        
		          #.:-:::-%:*+::::::=--%   *::::::::..::::::::::+=%=*%+=:.      . =  -                 #:::::-+@                         
		         *.:#::-:@-:%-:::.:..+:     *.:::::::::::::::::-@  -+::::::::::-%::#.*                 :::::=+#                          
		        %.:*=::-=#::%::::::-@        =:.:::::::::.:::::%     #.:::::::::%::%:=                 :::::=*#                          
		       .=::@::::#=:-#::..:#.          :......:..:.:.::#       *::::::::-+::+=:                .:::::***                          
		       %::@*:::=@-::#....#             -. .  .......--          *.....:%-::-*:                 :.::-+*%                          
		       +* #-::-+@::-%  -:               +          #             *  ...#::::%::                *.:::+++                          
		      =#  --::-+@:::% *                   *      %                -.  %-::-:%:-                =...:+**#                         
		           +:.+*@:::=@           :+#%=:     -  #     *#=            -:+:::::%.:                 *::.:*+*                         
		           %:=**@-.::@   @@@@@@#***--=+.              -#%@@@@@@@+    --::::-#:-                  -.::++*:                        
		           *:=+*@=::.@                                           *@= *:::..-*:                   =:.::+*=                        
		            #+%  =.::@                                               #:::::++:                    +:.:-+*                        
		             +   +::::.:#                                         :#+::::::*--                    *::.:=#                        
		                 -::::.-.-                                      .-.::.:::::%:=                    +:.::=+                        
		                 =.::@:#%=              +   ::    :             *::-:::::::#.=                    -::::-:                        
		                -:..:#                                             ==:.:::*+:=                   #.:.::=                         
		                %.:::=                                             %::::::@#:=                   ::::.:#                         
		                #::.:-@                                            #.::::=@%:-                  +:::.:=                          
		                -.:::-@@#                                          +.::::#@@=:                 #.:.::.%                          
		               *..::::@@@%@.                                      @=:::::@@@#::               +.:::..+                           
		                     #@@@@@@@@%                                %@@@-.+       +%              +::::::#                            
		              *       @@@@@@@@@@@@*                        -@@@@@@@=+    *    +             *..:::.#                             
		              *:%   *#                                              :*   =  ++                         =@=                       
		                                                                                                        -:-##: .%:               
		                                                                                                         +                       
		
		'
		sleep 0.1
		clear
		echo '
		
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                  #%@%*                                                                                                          
		                 #:------=+%+                                       .*#=:--:-.                                                   
		                .=::::----:::-:##                               **-::::::::::*                                                   
		                =-::         ---::=@   :+#*+**++**#+:        *-:::-:-.     -:-                                                   
		                +:::          .:::::::-:::::::::::::-::-:=+*:--::::        ::::                                                  
		                +:::            ::::::::::::::::::::::-::::::::::.          :.=                                                  
		                *:::         .::::::-::::::-::::::::::::::::::::            .:-                                                  
		                +-::      .:::::::::::::::::-::::::::::::::::-::           .::-                           .#=::-:-*              
		                =:::.    .::::::::::::::::::::::::::::::::::::::::          :.:                         .=-:::::::.*             
		                =:::.  ..::::::::::::::::::::::::::::::::::::::::::.       ::-.                        -:-::::::::*              
		                +::-:::::::::::-::#--::::::::::::::::::::::::::::::::.     :.-                         -:::::::::#               
		               . :::::==:..:::::::@-:::::::::::::::::::::::::::::::::::::.:::+                         :::::::-#                 
		             #        *    :::..  +                  .....:..:::::::::.::::::*                         :::::::#                  
		            *        *                                    *             .:::+=                         -:::::=:                  
		           : ::. :*:=#  ..:::=%*+@ %.::::::::.::::::::#%%@@#%=               .                         +.:::-+                   
		          +:-::::#-:++::::::::.%    +:::::::::::.:.:::::-% ==:.-%::.  :+-  +  =                         ::::-+*                  
		         #:::::--#::*-::::::-#.     -:::::::::::::::::::*    *::::::::::%::-+:%                         #.::+*%                  
		        @.:%:-::*-:-#-:::::*-        *:..::::::::::::::*      *:::::::..%:::%:#                         -:::=+**                 
		       =::==.::-@:-:#::.::%           +....:..:....:.-=         #.:.::::#::-%-=                          -:::+*%                 
		       #.*@-::-+%:::+:..+               -     ... ..+            #::...=+::.#-=                          -:::**%                 
		       =* =-::-*@--:=- #                 *         *              =:. .%::::+=:                          ::::+*%                 
		           -::++@:::-+#                    =     @                  - *-::::==:                         -::::=+=                 
		           =::**@::::%.       .==+%%%%#-     *=%     ++-             %%:::::*=:                         +::::**                  
		           *:=**@-.::*   @@*.                        +%@@@@@@@@@@@*   +:::::#::                        *:::::**                  
		           %.=*# =:::+                                             :  -:::::%:.                       *:::::=%                   
		            *#:  *::::*#                                             =-:::::%.=                      *.::::-#                    
		                 =.:::.::#                                       :+:.::::::-+:=                     %.:::.:+:                    
		                 =:::-=:..#                                     #..::::::::#::#                    +.:::::+                      
		                :-:::%                                            ==@::::::@:.%                   +:::::.-.                      
		                *.:.:=                   -  : .    .                #:::::+@-:%                 =:.::::.=                        
		                #:.:::@                                             -.::::#@+:#                #:.:.::.*                         
		                +..:::@@                                           =::::::@@%.+               #-:.:.::#                          
		                =..:::@@@@:                                        @.::::.@@@:-              #.:::::--                           
		                     *@@@@@@@+                                  +@@@:=       *::            %::::.:+                             
		              +       @@@@@@@@@@@*                           *@@@@@@+    *    =#           @..::..+                              
		              *:%   *#                                              :*   =  =*                         +@=                       
		                                                                                                        -:-##- .%:               
		                                                                                                         +                       
		
		'
		sleep 0.1
		clear
		echo '
		
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                ::::-----==*@=                                     #@=---:-:::%                                                  
		               +::::::---::--:--#-                             :%=-:-::::::::-:+                                                 
		               +-:.         .:::--::::::::::-:::::::-:-+*@%@+%--:-:-:-.     --:#                                                 
		               %::::           :::--:-::::::-:-::-:-:::::::-::::::-.        .::+                                                 
		               %:::            ::----:-:-:-:-:-:-------:::::::::::          .::+                              =-::=              
		               #:::.        .:-::::::::::::::::::-:-::-::::--::::           :::#                             =:::::*             
		               +.::       :-::-:::-::::---:::-::::-:::::-::::-::::          .::%                            #:::::.#             
		               =::::    :::::::-::-::::--::::::-:::::::::---:::::::.        .::+                           =::::::*              
		                =::::::::::::::::::-::::::::-::::::::::--::::--::::::       ::-                            *::::::%              
		               %-:::::::::::::-:::#-:::::::-::::-::::::-:::::::::::::::.   :::#                            *:::::=:              
		             . .:::::-@:::::::::::%:::::::::::::::::::::::::::-:::::::::::::::*                            #-:::.+               
		            #        *                                     #...:::::::.:::::.=                             =+=-::-               
		           #     -   #  .:.::.:=%@%@+*#:::::::..:.::.                      + .                              %++:.:+              
		          #-:::::%.:+=.::::::#-:%  ==::::::::::::::::::-:-**:.-@=:.        :                                -*+--:#              
		         %.:::::*+::@-::::::::@     #::::::::::::::::::::*  =-::::::::::=:::#  .                             %++:::.             
		        +::%::::%::-@:-:::::++       *:::::::::::::::::.*     *.::::::::+=::#::*                             =++:::#             
		        *.+=:::=@:::@-:::::@          =.:::::::::::::::=       +:::::::.*-::-+:*                              #+:::-             
		       @-:#-:::-@:::@::..==            =....:....:...=           =..:.:.#-:::@:+                              #+::::             
		       #=**::::+@:::@:..%               +    .. . ..%             *:....@:::.@.*                             =++::::             
		      =@  ::.:-+@:::%:.#                  -       +                =.  .*::::@.+                             #+:::::             
		           +::++@:::=@-                    *    *                    - %-:::-#:#                            *+=::::-             
		           %.:+*%::::#   *@@@@@@@@@@@@@@     *       @@@@@@@@#:       *=::::=+:#                           =+-::::.%             
		           =::+*@=.::+                                          +%@@@ *::::.#::%                          +-::::::=              
		            %.#  +::.:-                                               =:::::@:.%                         *.::::::+               
		             @   +:::.::.+                                          +#::::::*::#                       #:::::::.%                
		                 -:.::.::.+                                      #:.:::::::=*:.#                     *.::::::.=.                 
		                ::::.* -**                                      %.:-++:::::#%:.*                   #:..:.::.-*                   
		                *..:.+                        .                     #::::::@%..%                 =:::::::.:#                     
		                #:::::#                                             =:::::-@%-.#               =-::::::.:=                       
		                +..:::%@                                           =::::::*@@::#              #.:::::.=#                         
		                -..:::@@@@*                                        %..::::*@@+.#            .-.::::.-#                           
		                     *@@@@@@@@.                                  -@@:+       *:*           @.::::.:#                             
		              +       @@@@@@@@@@@%-                           +@@@@@+    +    ==          *:..:.:+                               
		              *:#   **                                              -*   =  +*                         +@=                       
		                                                                                                        -.-##: .#:               
		                                                                                                         +                       
		
		'
		sleep 0.1
		clear
		echo '
		
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                 +@@@@@+                                                +@@%@*                                                   
		               #:-:--::::::-=#*              -.                    #%=:--::::::@                                                 
		              +-::       .::-::::**%@*:::::::::-:::-:::-=%*    .@--:::-::::-::::*                                                
		              @:-:           .-:-::::::::::::::::::::::::::::=-:-::::-:      .-:%                                                
		              @:::            .:::-:-:::::::::--:::::::::::::-::::::         :::#                                                
		              #::.          .::::-::::::::::::::::::---:::::::::::            ::+                                                
		              =::.        :::::::::::::-:::::::::::::::::::::::::.           :::*                                                
		              --::      .:::::::::::::::::::::::::::::::::::::::::.          .:.%                                                
		               +:::.  .:::::::::::::::::::::::::::::::::::::::::::::.         ::%                           --:::::-*:           
		               %-*:::::::::::::::::::::::::::::::::::::::::::::::::::.      ::::.                           =::::::::::+         
		               %:::::::::::::::::::-:::::::::::::::::::::::::::::::::::::   :::*                             *--:::::::::#       
		             #:::::::.-::::::::::::#:::::::::::::::::::::::::::::::::::::::::::*                                =+++=-::::=      
		                ::-  @-.::::::::::+@:::::...::..:::::::::::=+:::::::::::::::::*                                    ##+=::::-     
		                 -             ++% :                   :   @+:             .:  -                                    #*+=:::.*    
		             ..::*  @::::::::::%    @:::.:::.:::::::::::::*=+:.:*           .  :                                    .*++-:::+    
		         *:=-:::#-::%::::::.::*      +:::::::::::::::::::=:  *::::::::  --:::@  :                                    #+++::::    
		        @:-%.:::%::-%:::::..#         :::::.:..:.:.:.:::=     =-:::::::::#:::#=.#                                    %+*+:::-    
		       .-.=+::::%:::%:::::-+           -.:::::::::::::.*        +.:..::::@:::==:%                                    %+**:::*    
		       @::*:::--@:::#::::=              =..:.:::.....-.          #::.::::#:::=+:%                                    *+*+::-#    
		       *#+@::::=@:::*:..#                * ..... ..:+             --::.:==:::==:*                                   =++*-::=     
		          .::::+%=:::@ %                  #.     :=                .:  .@::::=*:*                                   **+=::-*     
		           +::-*#+:::=@          :          *  =                     : #-::::+-:*                                  **+=::-:      
		           #.:-*+%.:::%  %@%##**+===-:.              @@@@@@@@@%-     -@=:::::#::%                                +*+-:::=        
		            :.=##@:::-+                                         +@@@@ .::::::@::@                              +--:::::*         
		            =--  #.:..:--+                                            .:::::-%..@                            *:::::::#           
		                 %:::..::.-.                                      =+:.::::::=+:.#                         *:::::::.*             
		                 #.:.+@*:..#                                     =.:::-:::::*-:.#                      =-.::::..:*               
		                 =:::::                                           :: @::::::@=.:+                   -= ...::::+:                 
		                ..::.:#                  =   =*                     +:::::::@*.:.                :-:.::::::-=                    
		                +.::::*@                                            *::::::*@*.=               =-.::::.::*                       
		                #..:::#@@@:                                        %:.:::.-%@@:+             #::::::.:+                          
		                     +@@@@@@@+                                    :%:+       %.-           ::.:::::=:                            
		              *       @@@@@@@@@@@%.                            :@@@@+    *    -::         =..::::=                               
		              *:#   *#                                              :*   =  ++                         +@=                       
		                                                                                                        -:-##: .%:               
		                                                                                                         =                       
		
		'
		sleep 0.1
		clear
		echo '
		
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                 =@@@@%*                                                =@@@@*                                                   
		               #:-::--::::::=#*             .-.                    #%=:---:::::%                                                 
		              +-::        :::::::**#%*-:::::::::::-::-:-=#*    .@--:-:::::::::::#                                                
		              @:::           .:::::-:::---:::::::::::::::::::=-::::::::      .-:#                                                
		              @:::            :::::::::-::::::::::::::::::::::-::::.         :::#                                                
		              #::.          .::::::::::::::::::::::::::::::::::::.            ::*                                                
		              +:::        .::::::::::::::::::::::::::::::::::::::.           :::*                                                
		              --::      .:::::::::::::::::::::::::::::::::::::::::.          .:.%                                                
		               +:::.  .:::::::::::::::::::::::::::::::::::::::::::::.         .:%                           --:-:::-*:           
		               %-*::::::::::::::::::::::::::::::::::::::::::::::::::::      ::::.                           =::::::::::+         
		               %::::::::::::::::::--:::::::::::::::::::::::::::::::::::::   :::*                             *=-:::::::::%       
		             %:::::::.=::::::::::::#-::::::::::::::::::::::::::::::::::::::::::*                                =+++=:::::-      
		                ::-  %:.::::::::::+@-:::..:.....:::::::::::=+::::::::.::::::::*                                    ##*-::::-     
		                 :             ++% .                   .   @*:             .:  -                                    #**=-::.#    
		             ..::*  @:::.::::::#    @::::::...:::.:.::::::+=+-.:*           .  :                                    .#*+=:::*    
		         *:+::::%-::@::::::.::*      +:::::::::::::::::::=:  #::::::::  -:.::@  :                                    %*++::::    
		        @:-@::::@::-%::::::.#         :::.::::::::::::::=     =:::::::.::#:::#=:#                                    @+*+:::-    
		       .-.=+::::%:::%:::::-+           -:.:::::.:::::::#        +.:.:::::@:::==:@                                    %+*+-::*    
		       @.:*::::-@:::%::::=              =.:.:::.:.:..=.          #::.::::%:::-+:#                                    *+*+:::#    
		       *#+%::::=@:::+:..#                * ... . ..-*             --::..==:::==:*                                   =++*-::=     
		          .::::*%-:::%.%                  *.     .=                .-  .@::::=+:*                                   ***=::-*     
		           =:::+#*:::=@          ..         *  +                     - #--:::+-:#                                  %++=:.-:      
		           #.:-+*%.:::%  #%%#*+*+===-::              @@@@@@@@@%:     +@=:::::%::%                                +*+-:::=        
		            :.=#%@::::=                                         +@@@@ .::::::@::@                              +=:::.::*         
		            -:-  #::::::-+                                            .:::::-%:.@                            +:::::.:*           
		                 %.::..:..=                                       =+:.::::::-*:.%                         *:.::::..*             
		                 #..:=@*:..*                                     +:::.-:::::*-..*                      =-.::::..:*               
		                 =:.:-.                                           :- %::::::@=.:=                   ==....::::+:                 
		                 :::.:#                  +   =*                     +:::::::@*::                 :=:.::::.:-+                    
		                +.::::*@                                            +.:::::*@%.-               =-::::::::+                       
		                #:..::#@@@:                                        %.::::::@@@:=             #::::::.:+                          
		                     *@@@@@@@+                                    :@.+       %.-           :::::::.=:                            
		              +       @@@@@@@@@@@%.                            -@@@@+    +    =-:         =:.::::=                               
		              *:%   *#                                              :*   =  =+                         +@=                       
		                                                                                                        -:=##- .%:               
		                                                                                                         +                       
		
		'
		sleep 0.1
		clear
		echo '
		
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                 -@@@@@+                                                =@@@@*                                                   
		               #:-:---::::::+#*             .-.                    ##=:----::::%                                                 
		              +-::       .:::::::**#@*-::::::::::::::::-=%*    .@--:::::::::::::#                                                
		              @:::           .:::::::::---::::::::::::::::::-=-::::::::      .-:%                                                
		              @:::            :::::::::::::::::::::::::::::::::::::.         :::#                                                
		              #::.          .::::::::::::::::::::::::::::::::::::.            ::*                                                
		              +:::        .:::::::::::::::::::::::::::::::::::::::           .::*                         =++                    
		              --::      :::::::::::::::::::::::::::::::::::::::::::          .:.%                       +:::::-+                 
		               *::::  .:::::::::::::::::::::::::::::::::::::::::::::.         .:%                       -:::::::=+               
		               %-+:::::::::::::::::::::::::::::::::::::::::::::::::::.      ::::.                        *::::::::#              
		               %:::::.::::::::::::-=::::::::::::::::::::::::::::::::::::.   :.:*                          --:::::::*             
		             %-:::::::-::::::::::::#:::::::::::::::::::::::::::::::::::::::::::*                            %+-:::::#            
		                ::-  @::::::::::::+@--::::::...::::::::::::==::::::::::.::::::*                              *+=:::::#           
		                 -             ++% .                   :   @*:             ..  -                              #*=::::+           
		             ..::*  @::::::::::#    @:::::::::.:::::::::::+=+:.:#           :  :                              **+:::::.          
		         *:=::::#-::@::::::.::*      +.::::::::::::::::::=:  #::::::::  =-.::@  :                             *++:::::%          
		        @:-%::::@::-%:::::..#         ::::::.:::::::.:::=     =:::::::.::#:::#-:#                             %**-:::-           
		       .-.=+::::%:::@::::::*           -.::::::::::::::#        =.:::::::@:::==:@                             ***:::-*           
		       @.:#::::-@:::#::::=              =.:::.:::::..+.          #::..:::%:::-+:#                            #*+-:::#            
		       *#+%::::+@:::+:..#                *... ... .:*             --::..==:::==:*                           =**=:::%             
		          .::::*%-:::@ %                  #:     .=                .- ..@::::==:*                          *++=::.%              
		           =:::+**:::=@          :.         *  =                     - %:::::+-:#                         **-::::%               
		           %..-**@.:::%  #%%#***++==-::              @@@@@@@@@%:     +@=:::::%::%                       *-::::::*                
		            :.=##@:::-=                                         +@@@@ .::::::%::@                     #:.:::..+                  
		            -:-  #:::.::-+                                            .:::::-%..@                   *.:::::..@                   
		                 %::::...:=                                       =+::::::::-+:.@                 #:::::::.*                     
		                 #...+@*:..*                                     +:::.-:::::*-..#               +:.::::..=-                      
		                 =::::.                                           :- @::::::@=.:+              =.::::::-*                        
		                 :::.:#                  +   -*                     +:::::::@*.:             +.:.::.:.%                          
		                +:.:::*@                                            +::::::*@#.-            *.:::::.+.                           
		                %::.::#@@@:                                        %:::::::@@@:=           *:.::::.%                             
		                     +@@@@@@@+                                    :@.+       %:-          *:::..:.@                             .
		              +       @@@@@@@@@@@%.                            -@@@@+    +    =::         #.:.:.:%                               
		              *:%   *#                                              :*   =  =*                         =@=                       
		                                                                                                        -:-##: .%:               
		                                                                                                         +                       
		
		'
		sleep 0.1
		clear 
		echo '
		
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                 -@@@@@+                                                =@@@@+                                                   
		               %:-::-:-:::::=#*             .-.                    #%=:--:::-::%                                                 
		              +-::       .:::::::**#@*-:::::::::::-::::-+%*    .@--:::::::::::::#                                                
		              @-::           .-::::--::----:::::::::::::::::-=-::::::::      .-:%                                                
		              @-::            .:::::::::-::::::::-::::::::::::::-:::         :::#                                                
		              #::.          .:::::::::::::::::::::::::-:::-::::::.            ::+                   =::::-#                      
		              +:::.       .::::::::--::::::::::::::::::::::::::::.           .::*                  +::::::::*                    
		              --::      :::::::::::::::::::::::::::::::::::::::::::          .::%                   =::::::::=                   
		               *:::.  .::::::::::::---::::::::::::::::::::::::::::::.         .:%                    #::::::::=                  
		               %-*::::::::::::::::::::::::::::::::::::::::::::::::::::      ::::.                     +-:::::::*                 
		               %:::::.:::::::::::::=::::::::::::::::::::::::::::::::::::.   :::*                       :-::::::=                 
		             #::::::::=::::::::::::#-::::::::::::::::::::::::::::::::::::::::::*                        *=-::::.+                
		                ::-  @:.::::::::::+@-::::.::..:.:::::::::::==::::::::.:.::::::*                         .*:::::.*                
		                 -             ++% .                   .   @*:             ::  -                         *=:::::#                
		             ..::*  @::::::::::#    @:::::::.::.::::::::::+=+:.:*           .  :                         *+:::::+                
		         *:+-:::%-::@::::::.::+      +.::::::::::::::::::=:  #::::::::  =-.::@  :                       -++::::-.                
		        @:-%::::@::-%:::::.:#         ::::::::::.:.:::::=     =:::::::.::#:::#-:#                       #*+::::+                 
		       .-:=+:::-%:::%:::::-*           -::.::::::::::::#        +.::.::::@:::+=.@                      .*+-::::-                 
		       @.:*::::-@:::#::::=              =.:::.:::::. =.          #:::::::%:::=+:%                      %*=:::.*                  
		       *#+%::::+@:::+:..#                # .  .  ..-*             -:::..==:::==:*                     **+-:::-                   
		          :::::*%-:::@ %                  *.     .=                .- ..@::::-=:#                     *+-::::+                   
		           =:::+*+:::=@          :.         *  =                     - #:-:::+-:#                    #=-::::@                    
		           %..-+*%.:::%  #@%#***+===-::              @@@@@@@@@%:     =@=:::::%::%                  .*-.:.:.#                     
		            :.=#%@:::-=                                         +@@@@ .::::::%::@                 #+::.:::%                      
		            -:-  #::::::-=                                            .:::::-#:.@                #..::.::#                       
		                 %::::.:..=                                       =+::::::::-*:.%               =.::::::*                        
		                 #.::=@*:..*                                     +.::.-:::::*-..*             -::.:.:.+                          
		                 =::::.                                           :- @::::::@=.:+            +.::::::*                           
		                .:::.:#                  =   -*                     +:::::::@*.:             :.:::..=                            
		                =..:::*@                                            +::::::+@#:=            ..:::.:::                            
		                %:::::#@@@:                                        %.:::.::@@@:=           #:.::...+                             
		                     *@@@@@@@+                                    :@.+       %:=          #.:..:..#                             .
		              *       @@@@@@@@@@@%.                            -@@@@+    +    =::         #..::.:=                               
		              *:#   +#                                              :*   =  =+                         =@=                       
		                                                                                                        -:-##: .%:               
		                                                                                                         +                       
		
		'
		sleep 0.1
		clear
		echo '
		
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                 -@@@@@+                                                =@@@@+                                                   
		               %:-::-:-:::::=#*             .-.                    #%=:--:::-::%                                                 
		              +-::       .:::::::**#@*-:::::::::::-::::-+%*    .@--:::::::::::::#                                                
		              @-::           .-::::--::----:::::::::::::::::-=-::::::::      .-:%                                                
		              @-::            .:::::::::-::::::::-::::::::::::::-:::         :::#                                                
		              #::.          .:::::::::::::::::::::::::-:::-::::::.            ::+                   =::::-#                      
		              +:::.       .::::::::--::::::::::::::::::::::::::::.           .::*                  +::::::::*                    
		              --::      :::::::::::::::::::::::::::::::::::::::::::          .::%                   =::::::::=                   
		               *:::.  .::::::::::::---::::::::::::::::::::::::::::::.         .:%                    #::::::::=                  
		               %-*::::::::::::::::::::::::::::::::::::::::::::::::::::      ::::.                     +-:::::::*                 
		               %:::::.:::::::::::::=::::::::::::::::::::::::::::::::::::.   :::*                       :-::::::=                 
		             #::::::::=::::::::::::#-::::::::::::::::::::::::::::::::::::::::::*                        *=-::::.+                
		                ::-  @:.::::::::::+@-::::.::..:.:::::::::::==::::::::.:.::::::*                         .*:::::.*                
		                 -             ++% .                   .   @*:             ::  -                         *=:::::#                
		             ..::*  @::::::::::#    @:::::::.::.::::::::::+=+:.:*           .  :                         *+:::::+                
		         *:+-:::%-::@::::::.::+      +.::::::::::::::::::=:  #::::::::  =-.::@  :                       -++::::-.                
		        @:-%::::@::-%:::::.:#         ::::::::::.:.:::::=     =:::::::.::#:::#-:#                       #*+::::+                 
		       .-:=+:::-%:::%:::::-*           -::.::::::::::::#        +.::.::::@:::+=.@                      .*+-::::-                 
		       @.:*::::-@:::#::::=              =.:::.:::::. =.          #:::::::%:::=+:%                      %*=:::.*                  
		       *#+%::::+@:::+:..#                # .  .  ..-*             -:::..==:::==:*                     **+-:::-                   
		          :::::*%-:::@ %                  *.     .=                .- ..@::::-=:#                     *+-::::+                   
		           =:::+*+:::=@          :.         *  =                     - #:-:::+-:#                    #=-::::@                    
		           %..-+*%.:::%  #@%#***+===-::              @@@@@@@@@%:     =@=:::::%::%                  .*-.:.:.#                     
		            :.=#%@:::-=                                         +@@@@ .::::::%::@                 #+::.:::%                      
		            -:-  #::::::-=                                            .:::::-#:.@                #..::.::#                       
		                 %::::.:..=                                       =+::::::::-*:.%               =.::::::*                        
		                 #.::=@*:..*                                     +.::.-:::::*-..*             -::.:.:.+                          
		                 =::::.                                           :- @::::::@=.:+            +.::::::*                           
		                .:::.:#                  =   -*                     +:::::::@*.:             :.:::..=                            
		                =..:::*@                                            +::::::+@#:=            ..:::.:::                            
		                %:::::#@@@:                                        %.:::.::@@@:=           #:.::...+                             
		                     *@@@@@@@+                                    :@.+       %:=          #.:..:..#                             .
		              *       @@@@@@@@@@@%.                            -@@@@+    +    =::         #..::.:=                               
		              *:#   +#                                              :*   =  =+                         =@=                       
		                                                                                                        -:-##: .%:               
		                                                                                                         +                       
		
		'
		sleep 0.1
		clear
		echo '
		
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                 =@@@@@+                                                =@@@@+                                                   
		               #:-::--::::::=**             .=.                    ##=:----::::%                                                 
		              +-::        :::::::**#%*-::::::::::::::-:-+%*    .@--:::::::::::::#                                                
		              @-::           .::::::::::--:::::::::::::::::::=-::::::::      .-:%                                                
		              @:::            ::::::::::::::::::::::::-:::::::::-::.         :::#                                                
		              #::.          .:::::::-::::::::::::::::::::::::::::.            ::*                                                
		              +:::        .::::::::::::::::::::::::::::::::::::::.           .::*                                                
		              --::      :::::::::::::::::::::::::::::::::::::::::::          .:.%                          *::.#                 
		               *:::.  .:::::::::::::::::::::::::::::::::::::::::::::.         ::%                          -.:::*                
		               %-*::::::::::::::::::::::::::::::::::::::::::::::::::::      ::::.                          +::::-.               
		               %::::::::::::::::::--::::::::::::::::::::::::::::::::::::.   :::*                           =:::::*               
		             #::::::::=::::::::::::#:::::::::::::::::::::::::::::::::::::::::::#                            %=::::=              
		                ::-  @:.::::::::::+@-::::::::.:.:::::::::::==::::::::::.::::::*                              %==:::-             
		                 -             ++% .                   .   @*-             .:  -                              #*=::.-            
		             ..::*  @::::::::::#    @::::::.::.:::::::::::+=+:.:#           .  :                               %*+:::+           
		         *:=::::#-::%::::::.::+      *:::::::::::::::::::=:  #::::::::  -:.::@  :                              -*+-::-+          
		        @::%::::@::-%:::::..#         -.::::::::::::::::=     =::::::::::#:::#=:#                               #*=:::#          
		       :-.=+:::-%:::%::::::*           -.:::::::::::.::#        =..::::::@:::==:@                               #*=:::%          
		       %.:*::::-@:::%::::=              =..::.::.::..=.          #:::::::%:::=+:#                               **=:::#          
		       *#+@::::=@:::+:..#                #  . ..  :-+             =:::..==:::==:*                              =*+-:::-          
		          .::::*%-:::@ %                  #:     .=                .- ..@::::=+:*                              #+=:::+           
		           +:::**+:::=@          :.         *  +                     - #:::::==:#                             #*=:::.-           
		           %..-+*%.:::%  #@%#**+++==-::              @@@@@@@@@%:     +@=:::::#::%                            %=:::::#            
		            :.=##@:::-=                                         +%@@@ .::::::%::@                           *+:.::.#             
		            -:-  #::::.:-=                                            .:::::-%::@                         +-::::::%              
		                 %.:::.:..=                                       =+::::::::-*:.%                       =.::::..=:               
		                 *.:.+@*:..*                                     +:::.-:::::*-.:*                     : .:::..-=                 
		                 =:::-.                                           :- @::::::@=.:+                  +::.:::..-*                   
		                .:::::#                  +   =*                     +:::::::@*.:                 =.:::.:..=:                     
		                +..:::*@                                            +::::::+@#.=               +:.::::..=.                       
		                #:::::#@@@-                                        %.::.:::@@@:=             +.:.:::::#                          
		                     *@@@@@@@+                                    :@.+       %:-           #.::::.:-@                           .
		              +       @@@@@@@@@@@%.                            -@@@@+    *    =::         #::::.::%                              
		              *:#   **                                              :*   =  +*                         =@=                       
		                                                                                                        -:-*#: .%:               
		                                                                                                         +                       
		
		'
		sleep 0.1
		clear
		echo '
		
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                 -@@@@%+                                                =@@@@*                                                   
		               #:::::-::::::+**             .-.                    ##=:---:::::%                                                 
		              +-::        :::::::+*#%*-::::::::::::::-:-+#*    .@--:::::::::::::#                                                
		              @:::           .:::::::::::-::::::::::::::::::-=-::::::::      .-:%                 :=+*                           
		              @-::            ::::-:::::::::::::::::::::::::::::-::.         :::#                ::::::-                         
		              #.::          .::::::::::::::::::::::::::::::::::::.            ::*                -:::::*                         
		              +:::        .:::::::::-::::::::::::::::::::::::::::.           .::*               +::::::+                         
		              --::      .::::::::::::::::::::::::::::::::::::::::::          .:.%               -::::::#                         
		               *:::.  .:::::::::::::::::::::::::::::::::::::::::::::.         ::%              #::::::-.                         
		               %-*::::::::::::::::::::::::::::::::::::::::::::::::::::      ::::.             +:::::::#                          
		               %-::::.::::::::::::--:::::::::::::::::::::::::::::::::::::   :::*             =::::::::                           
		             %-::::::.=::::::::::::#:::::::::::::::::::::::::::::::::::::::::::*             ::::::::*                           
		                ::-  %::::::::::::+@-::::.::.:.::::::::::::==::::::::::.::::::*             #:::::::+                            
		                 -             ++% .                   :   %*-             ::  -           * ::::::+                             
		             ..::*  @::::::::::%    @:::.::::.:.::::::::::+-+-.:*           .  :           *::::::=                              
		         *:=-:::#-::@:::::::::+      +:::::::::::::::::::=:  #::::::::  =:.::@  :          -::::::                               
		        @:-%::::@::-%:::::..#         -.::::::::::::.:::=     =::::::::::#:::#=:#         +-:::::=                               
		       .-.=+:::-%:::%:::::-*           -:.::::::::::::.#        =...:::::@:::==.@         #-::::.+                               
		       %.:*::::-@:::%::::=              =.:.:::.:::..=.          #:::::::%:::=+:#         @::::::                                
		       *#+@::::=@:::+:..#                *.   .   .-+             =:..:.==:::==:*         %-::::-                                
		          .::::*%-:::@ %                  *.     .=                :- ..@::::=+:*         ++::::-                                
		           +:::=*+:::=@          :.         *  =                     - #-::::+=:#          *-:::.                                
		           #..-**%.:::%  #%%#**+++==-::              @@@@@@@@@%:     =@=:::::#::%          #+::::=                               
		            :.-#%@:::-=                                         =%@@@ .::::::%::@          **=:::+                               
		            -:-  #:::..:-=                                            .:::::-%:.@           #+.::-                               
		                 %.:::.:..=                                       =+::::::::=*:.%           %*-:::*                              
		                 #.::+@*:..#                                     +:::.-:::::*-:.*           :*:.::-                              
		                 =:::-.                                           :- @::::::@=.:+            #-::::-                             
		                .:::.:#                  +   =#                     +:::::::@*.:             #:::::*                             
		                +:::::*@                                            +.:.:::*@#.=            .::::::+                             
		                #:::::#@@@:                                        %:::::::@@@:=            %.:::::*                             
		                     *@@@@@@@+                                    :@.+       @:-           %..:::::                             .
		              +       @@@@@@@@@@@%.                            -@@@@+    +    =-:         @.:.::::%                              
		              *:%   *#                                              :*   =  =*                         =@=                       
		                                                                                                        -:-*#: .%:               
		                                                                                                         +                       
		
		'
		sleep 0.1
		clear
		echo '
		
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                 =@@@@@+                                                =@@%@+                                                   
		               %:-:---::::::=#*             .=.                    #%=----:::::%                                                 
		              +-::        ::-::::**%@*-::::::::::::::---=%*    .@--:::::::-:::::#                                                
		              @:::           .:::::-:::::--::::::::::::::::::=-::::::::      .-:%                                                
		              @-::            ::::::::::::::::-::-::::::::::::-::::.         :::#                                                
		              #.:.          .:::::::::::::::::::::::::::-::::::::.            ::*                                                
		              =:::        .::::::::::::::::::::::::::::::::::::::.           :::*                                                
		              -:::      .::::::::::::::::::::::::::::::::::::::::::          .:.%             :-:::+                             
		               *:::.  .:::::::::::::::::::::::::::::::::::::::::::::.         .:%            -::::::+                            
		               %-*::::::::::::::::::::::::::::::::::::::::::::::::::::      ::::.           +:::::::+                            
		               %-::::.:::::::::::::-::::::::::::::::::::::::::::::::::::.  .:::*           *::::::.*                             
		             %:::::::.=::::::::::::#::::::::::::::::::::::::::::::::.::::::::::*          +.::.:::*                              
		                ::-  @:.::::::::::+@-::::.::...::::::::::::==::::::::::.::::::#           =::::::+                               
		                 -             ++% .                   .   %*:             ::  -          :::::::=                               
		             ..:-*  @::::::::::#    @::.:::::::..::.::::::*-+:.:*           .  :          +:::::::                               
		         *:=::::#-::@::::::.::+      +:::::::::::::::::::=:  #::::::::  =:.::@  :          ::::::+                               
		        @:-%::::@::-%::::::.#         -.::::::::::::::::=     =:::::::.::#:::#-:#          +.::..-                               
		       :-:=+:::-%:::%:::::-*           -:..::::::::::::#        =::.:::::@:::==.@           +:::::-                              
		       @.:*::::-@:::#::::=              =..::.::::...+.          #::.::::%:::-+:#            +::::::-                            
		       *#+%::::+@:::+:..#                #    .   .-*             =:::.:==:::==:*             *+::::.+                           
		          :::::*%-:::% %                  *:     .=                :- ..@::::=+:*              .*::::::-                         
		           +.::**+:::=@          :.         *  +                     - #--:::+-:%                %-:::::=                        
		           #..-**%.:::%  #@%#***++==-::              @@@@@@@@@%:     +@=:::::#::%                 #=:::.:                        
		            :.=#%@:::-=                                         +@@@@ .::::::@::@                  @-:::.+                       
		            =:-  #::.:.:==                                            .:::::-%:.@                   *::::-                       
		                 %::::.:..=                                       =+::::::::=*:.@                   #=:::=                       
		                 #.::=@*:..*                                     +:::.-:::::*-.:#                   +-:::+                       
		                 =:::-:                                           :- @::::::@=.:+                  #::::.=                       
		                .:::.:#                  +   =*                     +:::::::@*.:                  +:::::+                        
		                +..:::*@                                            +.:::::+@#.=                +:::::.-                         
		                #:..::#@@@:                                        %:::::::@@@:=              =:.::::.=                          
		                     *@@@@@@@+                                    :@.+       %.-            *::::::::+                          .
		              +       @@@@@@@@@@@%.                            -@@@%+    +    =::         #.:::.:.:+                             
		              *:%   +#                                              :*   =  =+                         =@=                       
		                                                                                                        -:-#*: .%:               
		                                                                                                         +                       
		
		'
		sleep 0.1
		clear
		echo '
		
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                 =@@@@@+                                                =@@@@*                                                   
		               #:-:-:-::::::=#*             .-.                    ##=:----::::%                                                 
		              +-::        :::::::**%%*-::::::::::::::::-=%*    .@--:::::::::::::#                                                
		              @-::           .:::::::-::::::::::::::::::::::-=-::::::::      .::%                                                
		              @-::            .:::::::::::::::::::::::::::::::::-::.         :::#                                                
		              #::.          .::::::::::::::::::::::::::::::::::::.            ::*                                                
		              +:::        .::::::::::::::::::::::::::::::::::::::.           .::*                        =.:=                    
		              -:::      :::::::::::::::::::::::::::::::::::::::::::          .:.%                       =::::*                   
		               *:::.  .:::::::::::::::::::::::::::::::::::::::::::::.         .:%                      +:::::#                   
		               %-*::::::::::::::::::::::::::::::::::::::::::::::::::::      ::::.                     +.:::::-                   
		               %-::::.::::::::::::-=:::::::::::::::::::::::::::::::::::::   :::*                      *:::::-                    
		             %-:::::::=::::::::::::#:::::::::::::::::::::::::::::::::::::::::::*                      +:::::-                    
		                ::-  @:.::::::::::+@-::::.:::::.:::::::::::=+::::::::::.::::::*                       +::::::+                   
		                 -             ++% .                   .   %*:             ::  -                       :::::.=                   
		             ..::*  @::::::::::#    @::.::::..:::::.::::::+-+:.:*           .  :                       #-:::::*                  
		         *:+::::#-::@:::::::::*      +.:::::::.::::::::::=:  #::::::::  --.::@  :                       *+-::::*                 
		        @:-%::::@::-%:::::..#         -:::::::::::.:::::=     =::::::::::#:::#=:#                        #*=::::*                
		       .-.=+:::-%:::%:::::-*           -.:::::::::::::.#        =..::::::@:::+=:@                         %+=:.:-                
		       %.:*::::-@:::#::::=              =..::::::.:..=.          #:::::::%:::-+:#                          ++-:::*               
		       *#+%::::=@:::+:..#                #    ..  :-*             =::::.==:::==:*                          @+-:::*               
		          :::::*%-:::@.%                  *.     .=                .- ..@::::=+:*                          @*-:::-               
		           =:::+**:::=@          :.         *  =                     - #-::::+=:#                          %+-:::+               
		           %..-**%.:::%  #%%#**+++==-::              @@@@@@@@@%:     =@=:::::#::%                         :*=:::.#               
		            :.=#%@::::=                                         +@@@@ .::::::%::@                         #=::::-                
		            -:-  #::::.:-=                                            .:::::-%..@                       -+::::::-                
		                 %::::.:..=                                       ++::::::::-*:.%                      +::::::=.                 
		                 #.::+@*:..*                                     +:::.-:::::*-..*                   :-.:::..:*                   
		                 =:::-:                                           :- @::::::@=.:+                 --::.::::-+                    
		                .:::.:#                  +   =*                     +:::::::@*.:                .=:::::::-*                      
		                +.::::*@                                            +.:.:::+@%.=               =.:::::::*                        
		                #:..::#@@@:                                        %:::::::@@@:=             #::::::::*                          
		                     *@@@@@@@+                                    :@.+       %.-           *:.:::.::%                           .
		              +       @@@@@@@@@@@%.                            -@@@@+    +    =-:         @.::::.:#                              
		              *:%   +#                                              :*   =  =*                         =@=                       
		                                                                                                        -:-*#: .%:               
		                                                                                                         +                       
		
		'
		sleep 0.1
		clear
		echo '
		
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                 -@@@@@+                                                =%@@@*                                                   
		               %:-:-:-::::::=#*             .-.                    ##=::-:-::::%                                                 
		              +-::        :::::::+*%%*-::::::::::::::::-=%*    .@--:::::::::::::#                                                
		              @:::           .::::::::::---::::::::::::::::::=:::::::::      .-:%                                                
		              @:::            .:-:::::::::::::::::::::::::::::::--:.         :::#                                                
		              #:::          .:::::::-::::::::::::::::::::::::::::.            ::*                                                
		              +:::        .::::::::::::::::::::::::::::::::::::::.           .::*                                                
		              --::      :::::::::::::::::::::::::::::::::::::::::::          .:.%                          *::.*                 
		               *:::.  .:::::::::::::::::::::::::::::::::::::::::::::.         .:%                          .::::#                
		               %-+::::::::::::::::::::::::::::::::::::::::::::::::::::      ::::.                          =:::::                
		               %::::::::::::::::::--::::::::::::::::::::::::::::::::::::.   :::*                           +:::::+               
		             %:::::::.=::::::::::::#:::::::::::::::::::::::::::::::::::::::::::*                            #-::::=              
		                ::-  @:.::::::::::+@-::::.::...::::::::::::==::::::::::.::::::*                              *=-:::-             
		                 -             ++% .                   :   @*:             ::  -                              #+-::.-            
		             ..::*  @::::::::::#    @::.::::.:::..::::::::*-+:.:*           .  :                               %++:::+           
		         *:+::::#-::@:::::::::+      +:.:::::::::::::::::=:  #::::::::  --.::@  :                              :++-:.:*          
		        @:-%::::@::-%:::::..#         -.:.::.:::::::::.:=     =::::::::::#-::#-:#                               %+=::.%          
		       .-.=+::::%:::%:::::-+           -:::::::::::.:::#        =..:.::::@:::==:@                               %+=:::%          
		       @::*::::-@:::#::::=              =.::.:::.::..+.          #:::::::%:::=+:#                               #+-:::#          
		       *#+@::::=@:::+:..#                #    . . .-*             =:.::.==:::==:*                              =*=:::::          
		          :::::*%-:::@.%                  *:     .=                .- ..@::::-+:*                              #*-::.+           
		           =:::+*+:::=@          :.         *  =                     - #-::::==:%                             #*-:::.-           
		           %.:-**%.:::%  #@%#**+++==-::              @@@@@@@@@%:     =@=:::::%::%                            %+:::::*            
		            :.=#%@::::=                                         =%@@@ .::::::@::@                           *:::...*             
		            -:-  #::::.:-=                                            .:::::-%:.@                         *-:.:::.%              
		                 %.:::.:..=                                       ==::::::::-*:.@                       +:::::..-:               
		                 #.::=@*:..*                                     +:::.-:::::*-..*                     = :..::::=                 
		                 =:::-:                                           :- @::::::@=.:+                  +:.::::.::*                   
		                .:::.:#                  +   =*                     +:::::::@*.:                 +...:::.:=-                     
		                +.::::*@                                            +.:::::*@#:=               *..::.:::+.                       
		                #::.::#@@@:                                        %:::::::@@@:=             *:..:..:-*                          
		                     *@@@@@@@+                                    :@.+       %:-           #.::::.:-#                            
		              +       @@@@@@@@@@@%.                            -@@@@+    *    =-:         %...::.=#                              
		              *:#   *#                                              :*   =  =*                         =@=                       
		                                                                                                        -.-*#: .%:               
		                                                                                                         +                       
		
		'
		sleep 0.1
		clear
		echo '
		
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                 =@@@@@+                                                =%@%@+                                                   
		               #:-::--::::::+#*             .-.                    ##=:---:::::%                                                 
		              +-::        :::::::**%@*-::::-:::::::::::-=%*    .@--:-:::::::::::#                                                
		              @:::           .:::-:::::::-:::::::::::::::::::=-::::::::      .-:%                                                
		              @:::            ::::::::::::::::::::::::-::::::::--::.         :::#                                                
		              #:::          .::::::::::::::::::::::::::::::::::::.            ::*                                                
		              +:::        .::::::::::::::::::::::::::::::::::::::.           .::*                                                
		              --::      .::::::::::::::::::::::::::::::::::::::::::          .:.%                            *-:-#               
		               *:::.  .:::::::::::::::::::::::::::::::::::::::::::::.         ::%                           =::::::#             
		               %-*::::::::::::::::::::::::::::::::::::::::::::::::::::      ::::.                           -.::::::-.           
		               %-::::.::::::::::::-=:::::::::::::::::::::::::::::::::::..   :::*                             +.:::::::=          
		             %::.::::.=::::::::::::#:::::::::::::::::::::::::::::::::::::::::::*                              :*::::::=.         
		                ::-  @:.::::::::::+@-:::..::...::::::::::::==::::::::::.::::::*                                 *+-::::=         
		                 :             ++% .                   :   @*-             .:  -                                  *=::::#        
		             ..::*  @::::::::-:#    @::.:::..::.::::::::::+-+:.:#           .  :                                  +*+::.-.       
		         *:+::::#-::@::::::.::*      +.::::::::::::::::.:=:  #::::::::  --.::@  :                                  #*::::#       
		        @:-%::::@:::%::::::.#         -.:::.:::::.::::::=     =:::::::.::#-::#=:#                                  %+-:::%       
		       :-.=+::::%:::%:::::-+           -..:::::::::::::#        +.:.:::::@:::==:@                                  %+=:::*       
		       %.:*::::-@:::#::::=              =.:.:.:..::..+.          #:::::::%:::=+:#                                  **+:::        
		       *#+@::::+@:::+:..#                #    .   .:*             =::::.==:::==:*                                 %+=-::#        
		          :::::*%-:::@.%                  *.     .=                :- ..@::::=+:*                                :**-:::+        
		           =:.:**+:::=@          :.         *  =                     - #-::::+=:%                               =++:::.*         
		           %..-**@.:::%  #@%#***++==-::              @@@@@@@@@%-     =@=:::::%::%                              %+-::::+          
		            :.=#%@::::=                                         +@@@@ .::::::@::@                            -+::::::=           
		            -:-  #::::.:-=                                            .:::::-%:.@                          =:.::::..%            
		                 %.:::...:=                                       =+::::::::=*:.%                        *..:.::.:*              
		                 #.:.+@*:..*                                     +:::.-:::::*-.:#                      =.::.:..::*               
		                 =:::-:                                           :- @::::::@=.:+                   +:...::::.-*                 
		                 :::.:#                  +   =*                     +:::::::@*.:.                :::.::..: :#                    
		                +.::::*@                                            +.::.::*@%.-               *..:::.:::+-                      
		                #:..::#@@@:                                        %.::::::@@@:=             =...:::::==                         
		                     *@@@@@@@+                                    :@.+       %:=            =.::::.:#                            
		              +       @@@@@@@@@@@%.                            -@@@@+    +    =::         %::::::-%                              
		              *:%   **                                              -*   =  +*                         =@=                       
		                                                                                                        -:-*#: .%:               
		                                                                                                         +                       
		
		'
		sleep 0.1
		clear
		echo '
		
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                 =@@@@@+                                                =@@%@*                                                   
		               %:-::--::::::=**             :-.                    #%=:----::::%                                                 
		              +-::        :::::::+*#@*-::::-:::::::::::-=#*    .@--:::::::::::::*                                                
		              @:::           .:::-::::::---::::::::::-::::::-=-::::::::      .-:%                                                
		              @:::            .::::-::::::::::::::::::::::::::::-::.         :::#                                                
		              #::.          .::::::::::::::::::::::::::::::::::::.            ::*                                                
		              +:::        .:::::::::-:::::::::::::::::::::::::::::           .::*                                                
		              -:::      .::::::::::::::::::::::::::::::::::::::::::          .:.%                            -=+=-.              
		               *:::.  .:::::::::::::::::::::::::::::::::::::::::::::.         .:%                           *:::::::=%           
		               %-*:::::::::::::::::::::::::::::::::::::::::::::::::::.      ::::.                           :--:::::::=:         
		               %-:::::::::::::::::--::::::::::::::::::::::::::::::::::::.   :::*                              #-::::::::%        
		             %::.::::.=::::::::::::*::::::::::::::::::::::::::::::::::::::::::.*                               :%+-::::::@       
		                ::-  @:.::::::::::+@-::::.:..:.::::::::::::==::::::::::.::::::*                                  ##*=::::-#      
		                 :             +=% .                   :   @*-             ::  -                                  -**+-:::=      
		             ..::*  @::::::::::#    @::::::::::::...::::::+-+:.:*           .  :                                   ***+-:::*     
		         *:=::::#-::@::::::.::+      +:::::::::::::::::::=:  #::::::::  --:::@  :                                   %*+-:::%     
		        @:-%::::@::-%:::::..#         -.::::.:::::::::::=     =::::::::::#:::#=:#                                   %*+=:::%     
		       .-.=+:::-%:::%:::::-+           -.:::..:::::::::#        =::.:::::@:::+=.@                                   **+::::#     
		       @.:*::::-@:::#::::=              =.:::.:::::..=.          #::.::::%:::=+:#                                   %++::.-      
		       *#+%-:::=@:::+:..#                # .  .   .-*             =:.::.==:::==:*                                   *+-:::#      
		          .::::*%-:::@ %                  *.     .=                .- ..@::::-+:*                                  %+=:::*       
		           =:::+**:::=@          :.         *  =                     - #-::::+=:#                                 %+=::.:.       
		           #..-**%.:::%  #%%#***++==-::              @@@@@@@@@%:     =@=:::::%::%                               +*-::::-         
		            :.=##@:::-=                                         +%@@@ .:.::::%::@                             #=::..:.+          
		            -:-  #::::.:-=                                            .:::::-%:.@                          :-.::.:::.*           
		                 %::::.:..=                                       ++::::::::=*:.%                       =-:..:::::.+             
		                 #.::+@*:..*                                     +.::.-:::::*-:.#                    .:...:.:..::*               
		                 =:::-:                                           :- @::::::@=.:+                  +:::::..:::-*                 
		                .:::.:#                  +   =*                     +:::::::@*.:                ::.::.:....:*                    
		                +:::::*@                                            +..::::*@#.=              =..:::::.::=                       
		                %:::::#@@@:                                        %:.:::::@@@:=             +:::::::.+                          
		                     *@@@@@@@+                                    :@.+       %:-           .:::::.:-#                            
		              *       @@@@@@@@@@@%.                            -@@@@+    *    =::         @..:::.-@                              
		              *:%   *#                                              -*   =  =*                         =@=                       
		                                                                                                        -:-*#: .%:               
		                                                                                                         +                       
		
		'
		sleep 0.1
		clear
		echo '
		
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                 =@@@@@+                                                =@@@@+                                                   
		               #:::---::::::=#*             .-.                    ##=:----::::%                                                 
		              +-::       .:::::::**%%*-::::-:::::::::---=#*    .@--:::::::::::::#                                                
		              @:::           .:::-:::::::-::::::::::::::::::-=-::::::::      .-:%                                                
		              @:::            .:--::::::::::::::::::-:::::::::::-::.         :::#                                                
		              #.::          .::::::--::::::::::::::::::::::::::::.            ::*                                                
		              +:::.       .:::::::::::::::::::::::::::::::::::::::           .::*                                                
		              --::      :::::::::::::::::::::::::::::::::::::::::::          .:.%                                                
		               *:::.  .:::::::::::::::::::::::::::::::::::::::::::::.         .:%                           -::::::=+-           
		               %-+:::::::::::::::::::::::::::::::::::::::::::::::::::.      ::::.                           =.::::::::+*         
		               %-::::.::::::::::::--::::::::::::::::::::::::::::::::::::.   :::*                             #--:::::::::*       
		             %:::::::.=::::::::::::#::::::::::::::::::::::::::::::::::::::::::.*                                ++++=:::::=      
		                ::-  @:.::::::::::+@-::::.::.::.:::::::::::==::::::::::.::::::*                                   .#**=::::=     
		                 -             +=% .                   :   @*:             .:  -                                    %**=:::.%    
		             ..::*  @::::::::::#    @::.:::::::.::::::::::*-+-.:*           .  :                                    :#**=:::*    
		         *:=::::#-::@::::::.::+      *:.::::..:::::::::::=:  #::::::::  --.::@  :                                    %**+-::-    
		        @:-%::::@:::%:::::..#         -:::::::::::::::::=     =:::::::.:-#:::#=:#                                    @*++:::-    
		       :-.=+:::-%:::%:::::-*           -.:::::::::::.::#        =..::::::@:::==.@                                    %**+:::*    
		       @.:*::::-@:::#::::=              =...:.:.:::..=.          #:::::::%:::=+:#                                    #+*+:::%    
		       *#+%::::+@:::+:..#                # .  .   .:*             =:::..==:::==:*                                   *+*+-::-     
		          .::::*%-:::@.%                  *:     .=                .- ..@::::=+:*                                   ***-:::+     
		           =:::+#+:::=@          :.         *  =                     - #-::::+-:%                                  %*+-::-+      
		           %..-**%.:::%  #@%#**++===-::              @@@@@@@@@%-     =@=:::::%::%                                +*=-:::=        
		            -.=#%@:::-=                                         +@@@@ .:.::::%::@                              *-::::..#         
		            -:-  #::::.:-=                                            .:::::-%..@                            %:.::::.*           
		                 %::::.:..=                                       ==::.:::::=*:.%                         *::::::::*             
		                 #.::+@*:..*                                     +.::.-:::::*-.:#                      +-..::::.:%               
		                 =:::-:                                           :- %::::::@=.:+                   -=..:..:::=.                 
		                .:::.:#                  +   =*                     +:::::::@*.:                  =::.:::..:+                    
		                +.::::*@                                            +.:::::+@#.-               +:..::::.:=                       
		                #:::.:#@@@:                                        %:.::.::@@@:=             #..:::..:*                          
		                     *@@@@@@@+                                    :@.+       %:-           -:::::::==                            
		              +       @@@@@@@@@@@%.                            -@@@@+    *    =::         +.:.::.-                               
		              *:%   *#                                              :*   =  +*                         =@=                       
		                                                                                                        -:-*#: .%:               
		                                                                                                         +                       
		
		'
		sleep 0.1
		clear
		echo '
		
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                                                                                                                                 
		                 =@@@@@+                                                =@@@@*                                                   
		               #:-::--::::::=#*             .-.                    ##=:----::::%                                                 
		              +-::       .:::::::**#%*-::::-:::::::::::-=#*    .@--:-:::::::::::#                                                
		              @:::           .::::::::::--::::::::::::::::::-=-::::::::      .-:%                                                
		              @:::            :::::::-:::::::::::::-:::::::::::::::.         :::#                                                
		              #.:.          .::::::::::::::::::::::::::::::::::::.            ::*                                                
		              +:::        .::::::::::::::::::::::::::::::::::::::.           :::*                                                
		              --::      :::::::::::::::::::::::::::::::::::::::::::          .:.%                                                
		               *:::.  .:::::::::::::::::::::::::::::::::::::::::::::.         .:%                           :::::::-+-           
		               %-+::::::::::::::::::::::::::::::::::::::::::::::::::::      ::::.                           +.::::::::+*         
		               %-::::.:::::::::::::=::::::::::::::::::::::::::::::::::::.   :::*                             #--:::::::::#       
		             %::::::::=::::::::::::#:::::::::::::::::::::::::::::::::::::::::::*                                ++++-:::::=      
		                ::-  @::::::::::::+@-::::.:::.:::::::::::::=+::::::::::.:::::.*                                   .***=::::=     
		                 -             +=% .                   :   @*-             ::  -                                    %#*=:::.%    
		             ..::*  @::::::::::#    @::.::::.::....:::::::+-+:.:*           .  :                                    :#*#+:::*    
		         *:=::::%-::@:::::::::+      *.::::::::::::::::::=:  #::::::::  =:.::@  :                                    %*++::::    
		        @:-%::::@::-%:::::..#         -.::::.:.:::::::::=     =:::::::.:-#:::#=:#                                    @*++:::-    
		       .-.=+:::-%:::%:::::-*           -.::::::::::::::#        =....::::@:::+=.@                                    %**+:::*    
		       @.:*::::-@:::#::::=              =...:.:..:...+.          #:::::::%:::=+.#                                    #+*+:::%    
		       *#+%::::+@:::+:..#                # .. .   .-+             =::...==:::==:*                                   *+*+-::-     
		          :::::*%-:::@ %                  *.     .=                .- ..@::::=+:*                                   ***-:::=     
		           =:::+**:::=@          :.         *  =                     - #:::::==:%                                  %*+:::-+      
		           %..-**%.:::%  #%%#**+++==-::              @@@@@@@@@%:     =@=:::::%::%                                +*=-::.=.       
		            -.=#%@:::-=                                         =@@@@ .::::::%::@                              *-:::::.#         
		            -:-  #::::.:-=                                            .:::::-%:.@                            #::::::.*           
		                 %::::.:..=                                       ==::::::::-*:.%                         *::.:::::*             
		                 #.::=@*:..#                                     +:::.-:::::*-..*                      +-..:::::.%               
		                 =:::-:                                           :- @::::::@=.:+                   --.....:::+.                 
		                .:::.:#                  +   =*                     +:::::::@*.:                  =:.::.::.:+                    
		                =.:.::*@                                            +.:::::*@#:-               +:.:::::::+                       
		                #:..::#@@@:                                        %:::::::@@@:=             *..::::.:*                          
		                     *@@@@@@@+                                    :@.+       %:-           -:::::::==                            
		              +       @@@@@@@@@@@%.                            -@@@@+    +    =::         +.:..:.-                               
		              *:#   *#                                              :*   =  =+                         =@=                       
		                                                                                                        -:-*#: .%:               
		                                                                                                         +                       
		
		'
		sleep 2 �^     �`.�@r�\ ,�� ,  ,��   a,�� .��     �`.~�b��\ *�� *  *��   u*�� ,��     �`.~��B�\ (�� (  (��   l(�� *��     �`.}6�u�\ &�� &  &��   .&�� (��     �`.}_zZ�\ $�� $  $��   t$�� &��     �`.|7��/�\ "�� "  "��   i"�� $��     �`.|24r�\  ��     ��   n �� "��     �`.|,�@��\ ��   ��  �� i��  ��     �`.|&��1�\ ��   ��    �� ��     �`.{(���\ ��   ��  �� >�� ��     �`.{	���\ ��   ��    �� ��     �`.zO�b�\ ��   ��   F�� ��     �`.yꮽ�\ ��   ��   O�� ��     �`.y)���\ ��   ��   E�� ��     �`.y	�?�\ ��   ��   R�� ��     �`.y4��\ ��   ��   O�� ��     �`.x8v���\ ��   ��   F�� ��     �`.x0Zҷ�\ ��   ��   F�� ��     �`.x�}��\ ��   ��   O�� ��     �`.xL�I�\ ��   ��   R�� ��     �`.x�̎�\ ��   ��   '�� ��     �`.w#Ѓ��\ ��   ��  �� '�� ��     �`.w#��E�\ ��   ��    �� ��     �`.v98�\ 
�� 
  
��   <
�� ��     �`.vvs��\ ��   ��  �� <�� 
��     �`.v@���\ �� �� .�� .��   > init.lua << 'EOF'�� .��     �`.v@��\ �� �� �� ��   	�� ��     �`.`,)�c�\ �� �� �� ��   	�� ��     �`.`܍�\ �� *  �� ��  >��  ��     �_�8���\ "�� .�� "�� �� "��  >>�� "��     �_�8�A��\ ��   �� ��  >�� ��     �_�4p�4�\ �� �� �� �� ��  >>�� ��     �_�4o�[�\ ��   �� ��  >�� ��     �_�0 �>��\ ��   �� ��  <�� ��     �_�/.��Z�\ ��   �� ��  <�� ��     �_�/Z&�\ �� �� �� �� ��  >>�� ��     �_�/Yn8�\ ��   �� ��  >�� ��     �_�#,C���\ �� �� �� �� ��  >>�� ��     �_�")ԩA�\  �� ,   ��  ��  > �� "��     �_� uٶ�\ �� *  �� ��  >��  ��     �_� ��,�\ "�� .�� "�� �� "��  >>�� "��     �_�Bʺ�\ "�� ."�� "�� "�� <��  > �� "��     �_����v�\ �� �� �� �� <��  >�� ��     �_���#��\ *�� *  ,�� :��  F*�� ,��     �_�.&�+�\ (�� (  *�� 8��  O(�� *��     �_�(-���\ &�� &  (�� 6��  E&�� (��     �_�<���\ &�� &  &�� 4��  '&�� (��     �_�	��q�\ $�� $  $�� 2�� �� '$�� &��     �_�	��J�\ "�� "  "�� 0��   "�� $��     �_��1;G�\  ��     �� .��  < �� "��     �_��,j��\ ��   �� ,�� �� <��  ��     �_��%@;G�\ ��   �� *��   �� ��     �_��: j��\ ��   �� (��  a�� ��     �_��0��B�\ ��   �� &��  u�� ��     �_��,����\ ��   �� $��  l�� ��     �_��%�2�\ ��   �� "��  .�� ��     �_����\ ��   ��  ��  t�� ��     �_��0�Ma�\ ��   �� ��  i�� ��     �_��+�K��\ ��   �� ��  n�� ��     �_��&���\ ��   �� �� �� i�� ��     �_��!����\ �� �� .�� .�� ��  'EOF' >> init.lua�� .��     �_��!�K��\ �� �� �� ��   >�� 
��     �_��[���\ 
�� 

�� 
�� 
��   <�� 
��     �_��&�B�\ �� �� �� ��   <
�� ��     �_��ڳ��\ �� �� �� ��   	�� ��     �_�7%"y��\ �� �� �� ��   	�� ��     �_�7a���\ �� �� �� ��   	�� ��     �_�*J��\ �� �� �� ��   	�� ��     �_�*	��Q�\ �� �� �� ��   	�� ��     �_�':��+�\ �� �� �� ��   	�� ��     �_�'(��A�\  ��   ��  ��  ��   
 �� ��     �_������\ �� �� �� �� ��  cd ~
�� ��     �_�Uh�@�\ �� �� �� �� �� �� ~�� ��     �_�G1�1��\ �� �� �� �� ��   �� ��     �_�G \��\ �� �� �� �� ��  d�� ��     �_�G��\ �� �� �� �� ��  c�� ��     �_�Gש��\ �� �� �� �� ��  
�� ��     �_�G�U��\ �� �� �� �� ��  	��  ��     �_�C&�^��\ �� �� �� �� ��  c�� ��     �_�Ca���\ �� �� �� �� ��  r�� ��     �_�CS��\ �� �� �� �� ��  h�� ��     �_�C N���\ �� �� �� �� ��  s�� ��     �_�B3�sJ�\ �� �� �� �� ��  z�� ��     �_�B+����\ �� �� �� �� �� �� .�� ��     �_�B����\ �� �� �� �� ��   �� ��     �_�@3�dP�\ �� �� �� �� ��  x�� ��     �_�@0��B�\ �� �� �� �� �� �� +�� ��     �_�@'�Y�\ 
�� 

�� 
�� 
�� ��   
�� ��     �_�@���\ �� �� �� �� ��  d�� 
��     �_�@����\ �� �� �� �� ��  o�� ��     �_�@r���\ �� �� �� �� ��  m�� ��     �_�@o��\ �� �� �� �� ��  h�� ��     �_�?9�;�\ �� �� �� �� ��  c�� ��     �_�?6~7�\ �� �� �� �� ��  
�� ��     �_�?$���\ �� �� �� �� �� ��  �� ��     �_�>6����\ �� �� �� �� ��   �� ��     �_�>���\ �� �� �� �� ��  c�� ��     �_�>ET-�\ �� �� �� �� ��  r�� ��     �_�=2��y�\ �� �� �� �� ��  h�� ��     �_�=+g'�\ �� �� �� �� ��  s�� ��     �_�= ��(�\ �� �� �� �� ��  z�� ��     �_�=��l�\ �� �� �� �� �� �� .�� ��     �_�=*��\ 
�� 

�� 
�� 
�� ��   
�� ��     �_�<&����\ �� �� �� �� ��  h�� 
��     �_�<!}��\ �� �� �� �� ��  c�� ��     �_�<}��\ �� �� �� �� ��  u�� ��     �_�<nT�\ �� �� �� �� ��  o�� ��     �_�<�;��\ �� �� �� �� ��  t�� ��     �_�<q���\ �� �� �� �� ��  
�� ��     �_�;��`�\ �� �� �� �� ��  c�� ��     �_�7:;�]�\ �� �� �� �� ��  r�� ��     �_�7-���\ �� �� �� �� ��  h�� ��     �_�7����\ 
�� 

�� 
�� 
�� ��  s
�� ��     �_�69���\ �� �� �� �� ��  z�� 
��     �_�63�p��\ 
�� 

�� 
�� 
�� ��  x�� 
��     �_�6@���\ �� �� �� �� ��  x�� 
��     �_�51w)��\ �� �� �� �� �� �� .�� ��     �_�5)�:��\ �� �� �� �� ��   �� ��     �_�5"p���\ �� �� �� �� ��  m�� ��     �_�5����\ �� �� �� �� ��  r�� ��     �_�5�h�\ ��  �� �� �� �� �� 2sudo apt install libgtk-4-dev build-essential curl�� l��     �_�*gF_�\ �� �� �� �� ��  				�� ��     �_�*�	q�\ <�� T<�� <�� <�� ��  
<�� ��     �_�*����\ ��  �� �� �� �� �� cargo install ripdrag�� 2��     �_�&;^"�\ �� �� �� �� ��  				�� ��     �_�%/e�\ <�� T<�� <�� <�� ��  
<�� ��     �_�%.�	�\ �� �� .�� .�� ��  cargo install ripdrag�� .��     �_�!G�\ �� �� �� �� ��  
F�� ��     �_�#H��\ �� �� �� �� �� �� 	�� ��     �_��}q�\ �� �� �� �� �� �� 	�� ��     �_�;jH��\ �� �� �� �� ��  		�� ��     �_�Y�B�\ F�� RF�� F�� F�� ��  
F�� ��     �_�X���\ "�� ""�� 8�� 8�� 0�   careful_rm"�� 8��     �_�##Q��\ �� �� �� �� 0� �� cargo install ripdrag�� .��     �_Ã!�l��\ �� �� �� �� 0�  		�� ��     �_Ã�j�\ ���� ������ ���� ���� 0�  
���� ��     �_Ãod�\ ��   �� ��  
�� ��     �_�4�?<�\ �� �� f�� f�� ��  y		mkdir -p ~/oh-my-zsh/custom/plugins
		cd ~/oh-my-zsh/custom/plugins
		git clone git@github.com:MikeDacre/careful_rm.git�� f��     �_��V�\ �� �� �� �� ��  
:�� ��     �_����\ (�� ((�� (�� (�� ��  
(�� ��     �_��R/r�\ �� �� �� �� ��  plugins=(git sudo careful_rm)
�� ��     �_��F�`�\ 
�� 
�� 
�� 
�� �� �� ~
�� ��     �_�w!%##�\ �� �� �� �� ��   �� 
��     �_�w�P6�\ �� �� �� �� ��  d�� ��     �_�w����\ �� �� �� �� �� �� c�� ��     �_�v9*^A�\ �� �� �� �� ��  		�� ��     �_�u9�(��\ f�� rf�� f�� f�� ��  
f�� ��     �_�u9�k��\ �� �� �� �� �� �� wmkdir -p ~/oh-my-zsh/custom/plugins
		cd ~/oh-my-zsh/custom/plugins
		git clone git@github.com:MikeDacre/careful_rm.git�� f��     �_�k4M��\ �� �� �� �� �� �� 		�� ��     �_�j9��7�\ �� �� �� �� ��  		�� ��     �_�j9���\ �� �� �� �� �� �� 
�� ��     �_�j9�Ky�\ �� �� �� �� �� �� 	�� ��     �_�j���\ �� �� �� �� ��  	�� ��     �_�i3��^�\ �� �� �� �� ��  9source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh�� r��     �_�7+z[�\ ,�~ ,,�~ ,�~ ,�~ ��  
,�~ ��     �_�6���\ ��   �� �� �� Ugit clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions�� ����     �_�����\ �� �� L�� L�� ��  ��echo 'deb http://download.opensuse.org/repositories/shells:/zsh-users:/zsh-autosuggestions/Debian_Unstable/ /' | sudo tee /etc/apt/sources.list.d/shells:zsh-users:zsh-autosuggestions.list
		curl -fsSL https://download.opensuse.org/repositories/shells:zsh-users:zsh-autosuggestions/Debian_Unstable/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/shells_zsh-users_zsh-autosuggestions.gpg > /dev/null
		sudo apt update
		sudo apt install zsh-autosuggestions�� L��     �_�*��\ �� �� �� �� �� �� ��echo 'deb http://download.opensuse.org/repositories/shells:/zsh-users:/zsh-autosuggestions/Debian_Unstable/ /' | sudo tee /etc/apt/sources.list.d/shells:zsh-users:zsh-autosuggestions.list
		curl -fsSL https://download.opensuse.org/repositories/shells:zsh-users:zsh-autosuggestions/Debian_Unstable/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/shells_zsh-users_zsh-autosuggestions.gpg > /dev/null
		sudo apt update
		sudo apt install zsh-autosuggestions�� L��     �_����\ �� �� �� �� �� �� 		�� ��     �_�3�\�\ �� �� �� �� ��  		�� ��     �_�3���\ �� �� �� �� �� �� 
�� ��     �_�3����\ �� �� �� �� ��  		�� ��     �_�'�P�\ ,�� 8,�� ,�� ,�� ��  
,�� ��     �_�'����\ �� �� �� �� ��  
�� ��     �_��!|��\ ��   �� ��   �� ��     �_��"ca��\ ��   �� ��   �� ��     �_�|����\ .�� F�� �� �� ��  				sudo apt-get update
�� ��     �_�V60�\ �� $�� �� ��  �� esudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin�� ����     �_�K
����\ �� �� �� ��   				      �� ��     �_�J1�D�\ 8�� J8�� 8�� 8��   
8�� ��     �_�J1�z,�\ �� 2  �� ��  m�� ��     �_�@�1�\ �� 0  �� ��  r�� ��     �_�
��/�\ �� .  �� ��  o�� ��     �_�k9C�\ �� ,  �� ��  w�� ��     �_� fVC�\ �� *  �� ��  k�� ��     �_�-x���\ �� (  �� ��  o�� ��     �_�&�Q�\ �� &  �� ��  o�� ��     �_���n�\ �� $  �� ��  b�� ��     �_�sI��\ ��   �� ��  				  �� ��     �_�%���\ � �� �  � �� ��  
� �� ��     �_�$���\ ��   �� ��  
� �� ��     �_� 1�)�\ �� �� �� �� ��  				  �� ��     �_� �j�\ �� $�� l�� l�� ��  0$(. /etc/os-release && echo "$VERSION_CODENAME")�� l��     �_��2���\ �� "�� �� �� ��   �� ��     �_��o��\ ��  �� �� �� ��   �� ��     �_���m�\ �� �� �� �� ��   �� ��     �_��:B�Z�\ 
�� 
�� 
�� 
�� ��   
�� ��     �_��0>���\ �� �� �� �� ��   �� 
��     �_��&�ߍ�\ �� �� �� �� ��   �� ��     �_����q�\ ��  �� �� �� ��  	�� ��     �_�����\ 
�� (
�� 
�� 
�� ��  	�� 
��     �_��1����\ �� *�� �� �� ��   
�� ��     �_��)�W]�\ 
�� (
�� 
�� 
�� ��   
�� ��     �_�� ����\ ��  �� �� �� ��  	�� 
��     �_��/�x�\ �� �� �� �� ��  	�� ��     �_��$�g�\ �� �� �� �� ��  	�� ��     �_���q��\ �� �� �� �� ��  	�� ��     �_���A��\ �� �� �� �� ��  	�� ��     �_�� ���\ 
�� "
�� 
�� 
�� ��   
�� ��     �_���7�\ ��  �� �� �� ��   �� 
��     �_��2N���\ 
�� (
�� 
�� 
�� ��  	�� 
��     �_��;���\ �� *�� �� �� ��   
�� ��     �_��n�0�\ 
�� (
�� 
�� 
�� ��   
�� ��     �_��6�"��\ ��  �� �� �� ��  	�� 
��     �_��
o+��\ �� �� �� �� ��  	�� ��     �_�� �̒�\ �� �� �� �� ��  	�� ��     �_���$�\ �� �� �� �� ��  	�� ��     �_��M��\ �� �� �� �� ��  	�� ��     �_��;]��\ �� �� �� �� ��   �� ��     �_��.��S�\ �� �� �� �� ��   �� ��     �_����q�\ �� �� �� �� ��  	�� ��     �_�����\ �� �� �� �� ��  	�� ��     �_��7����\ �� �� �� �� ��  	�� ��     �_��,w��\ �� �� �� �� ��  	�� ��     �_�� _q�\ �� �� �� �� ��  	�� ��     �_����I�\ �� �� �� �� ��  	�� ��     �_��5�-��\ �� �� �� �� ��  	�� ��     �_��(��C�\ �� �� �� �� ��  	�� ��     �_���\ �� �� �� �� ��  	�� ��     �_��ҵY�\ �� �� �� �� ��  	�� ��     �_��7�V�\ �� �� �� �� ��  	�� ��     �_��,����\ �� �� �� �� ��  	�� ��     �_��!AQ�\ 
�� (
�� 
�� 
�� ��  	�� 
��     �_�� ��S�\ ��  �� �� �� ��  	�� 
��     �_��+�m��\ �� �� �� �� ��  	�� ��     �_������\ �� �� �� �� ��  	�� ��     �_���g*�\ �� �� �� �� ��  	�� ��     �_������\ �� �� �� �� ��  	�� ��     �_��:F���\ Z�� r�� �� �� ��  .				sudo apt-get install ca-certificates curl
�� ��     �_���/��\ �� �� �� ��   	�� ��     �_��.x���\ �� �� �� ��   	�� ��     �_��#N���\ �� �� �� ��   	�� ��     �_������\ �� �� �� ��   	�� ��     �_��)���\ �� �� �� ��   	�� ��     �_�����\ �� �� �� ��   	�� ��     �_������\ �� �� �� ��   	�� ��     �_��0`C�\ �� �� �� ��   	�� ��     �_��#�(�\ �� �� �� ��   	�� ��     �_���V��\ �� �� �� ��   	�� ��     �_��3'�m�\ �� �� �� ��   	�� ��     �_��%�c�\ �� �� �� ��   	�� ��     �_��˵�\ �� �� �� ��   	�� ��     �_��{	X�\ �� �� �� ��   	�� ��     �_��)���\ �� �� �� ��   	�� ��     �_��	�Hv�\ �� �� �� ��   	�� ��     �_��:m�:�\ �� �� �� ��   	�� ��     �_��4Wz�\ �� �� �� ��   	�� ��     �_��!%��\ �� �� �� ��   	�� ��     �_��s���\ �� �� �� ��   	�� ��     �_��	^���\ �� �� �� ��   	�� ��     �_���+�\ �� �� �� ��   	�� ��     �_��:9U�\ �� �� �� ��   	�� ��     �_��)=��\ �� �� �� ��   	�� ��     �_������\ ��   ��   �I# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update�� &��     �_���œ�\ �� �� B�� B��   ��				curl -fsSL https://get.docker.com -o get-docker.sh
				sudo sh get-docker.sh
				sudo groupadd docker
				sudo usermod -aG docker $USER�� B��     �_������\                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ��   *�^    �f�~!">J�\ 