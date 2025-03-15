#!/bin/bash
echo "Is this a brand brand new install? (y/n):"
read install

if [[ $install == "y" || $install == "Y" ]]; then
# Store current username
CURRENT_USER=$(whoami)

# Create a temporary script that will run as root
cat > /tmp/root_operations.sh << EOF
#!/bin/bash

# Remove first two lines from sources.list
sed -i '1,2d' /etc/apt/sources.list

apt update
apt install -y sudo

# Add to sudoers
echo "$CURRENT_USER ALL=(ALL:ALL) ALL" >> /etc/sudoers
echo "$CURRENT_USER ALL=(ALL) NOPASSWD: /sbin/reboot" >> /etc/sudoers
echo "$CURRENT_USER ALL=(ALL) NOPASSWD: /usr/bin/apt update" >> /etc/sudoers

EOF

chmod +x /tmp/root_operations.sh

# Execute the script as root via su
su -c "/tmp/root_operations.sh"
rm /tmp/root_operations.sh
echo "okay done!"
sleep 2
clear
fi

echo -e "\nMake sure this is debian testing!! Also setup your automounting drives right meow ! ! ! ! ! If you did that just press Enter :3"
read

echo -e "Would you like to skip the initial setup? (yazi, zsh/ohmyzsh) (n/y):"
read setup 
		
if [[ $setup == "n" || $setup == "N" ]]; then
# Install required packages
sudo apt install -y btop micro git curl wget ssh rsync gnupg unzip zip tar ncdu lsof net-tools apt-transport-https ca-certificates build-essential python3 python3-pip lshw bash-completion eza network-manager jq feh gcc make autoconf automake pkg-config flex bison check gpg file zoxide imagemagick xclip fzf poppler-utils 7zip ffmpeg exiftool mediainfo nala cifs-utils --no-install-recommends
sudo apt remove -y vim

touch ./.startup.sh
chmod +x ./.startup.sh
mkdir ~/.builds
mkdir ~/Downloads
mkdir ~/Pictures
mkdir ~/Videos
mkdir ~/Applications
mkdir ~/.config

LATEST_CHEZ=$(curl -s "https://api.github.com/repos/twpayne/chezmoi/releases/latest" | jq -r '.tag_name' | sed 's/^v//')
wget "https://github.com/twpayne/chezmoi/releases/download/v${LATEST_CHEZ}/chezmoi_${LATEST_CHEZ}_linux_amd64.deb"
sudo apt install -y ./chezmoi_${LATEST_CHEZ}_linux_amd64.deb
rm chezmoi_${LATEST_CHEZ}_linux_amd64.deb

echo '
-------------------
Finished essentials
-------------------
'
sleep 3
clear

## Install zsh & ohmyzsh
echo '
------------------------
Installing zsh & ohmyzsh
------------------------
'
echo "just type 'exit' when this finishes"
sleep 3
sudo apt install -y zsh 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh
. "$HOME/.cargo/env"
cd ~
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
echo '
----------------------
Finished zsh & ohmyzsh
----------------------
'
sleep 3
clear

# Yazi Install
echo '
---------------
Installing Yazi
---------------
'
sleep 3
cargo install --locked yazi-fm yazi-cli
cd ~/.config 
mkdir -p yazi/plugins
cd ~/.config/yazi
touch yazi.toml package.toml keymap.toml init.lua

# Install some yazi plugins
ya pack -a stelcodes/bunny
ya pack -a yazi-rs/plugins:full-border
ya pack -a DreamMaoMao/clipboard
ya pack -a TD-Sky/sudo
ya pack -a yazi-rs/plugins:chmod
ya pack -a ahkohd/eza-preview
ya pack -a boydaihungst/mediainfo
git clone https://github.com/ndtoan96/ouch.yazi.git ~/.config/yazi/plugins/ouch.yazi

## vvv moar things for yazi vvv
# yazi init.lua
cat << 'EOF' >> init.lua
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
    { tag = "Pics", path = "/home/jizzy/Pictures", key = "p" },
    { tag = "Vids", path = "/home/jizzy/Videos", key = "v" },
  },
  notify = true, -- notify after hopping, default is false
  fuzzy_cmd = "sk", -- fuzzy searching command, default is fzf
})

require("full-border"):setup()
EOF

# yazi keymap.toml
cat << 'EOF' >> keymap.toml
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
run = "plugin ouch --args=zip"
desc = "Compress with ouch"

[[manager.prepend_keymap]]
on = "<C-y>"
run = ["plugin clipboard"]
EOF

# yazi yazi.toml
cat << 'EOF' >> yazi.toml
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
EOF
echo '
-------------
finished yazi
-------------
'
sleep 3
clear

# Get CPU 
		cpu_info=$(lscpu | grep "Model name" | xargs)
		echo -e "\nDetected: $cpu_info"
			
		# Confirm CPU generation
		echo "Which version do you want for Xanmod Kernel? (2-4):"
		read xanver
		
		wget -qO - https://dl.xanmod.org/archive.key | sudo gpg --dearmor -vo /etc/apt/keyrings/xanmod-archive-keyring.gpg
		echo 'deb [signed-by=/etc/apt/keyrings/xanmod-archive-keyring.gpg] http://deb.xanmod.org releases main' | sudo tee /etc/apt/sources.list.d/xanmod-release.list
		sudo apt update
		if [[ $xanver == "2" ]];
			then 
				sudo apt install -y linux-xanmod-x64v2
				echo -e "\nInstalled Xanmod kernel"
			elif [[ $xanver == "3" ]];
			then
				sudo apt install -y linux-xanmod-x64v3
				echo -e "\nInstalled Xanmod kernel"	
			elif [[ $xanver == "4" ]];
			then
				sudo apt install -y linux-xanmod-x64v4
				echo -e "\nInstalled Xanmod kernel"
			else
				sudo apt install -y linux-xanmod-x64v3
				echo -e "\nInstalled Xanmod kernel"
		fi
fi


# dk?
echo -e "\nOkay cool. Now, do you wanna install dk and lightdm? (y/n):"
read dk

# dk Install
if [[ $dk == "y" || $dk == "Y" ]]; then

# eww?
echo -e "\nDo you want eww? (ElKowar's Wacky Widgets) (y/n):"
read eww

# picom?
echo -e "\nWould you like to install picom? (y/n):"
read picom

# rofi?
echo -e "\nDo you need rofi? (y/n):"
read rofi
		
# Browser? 
echo -e "\nDo you need a browser? (y/n):"
read browser

# Vesktop?
echo -e "\nDo you need Vesktop? (y/n):"
read vesktop

# extras?
echo -e "\nUhh... oh yeah, do you want genshin, hsr, zzz, osu, and steam? (y/n):"
read extras

echo '
-------------
Installing dk
-------------
'
sleep 3
sudo apt install -y mpv slick-greeter lightdm libxcb-randr0-dev libxcb-util-dev libxcb-icccm4-dev libxcb-cursor-dev libxcb-keysyms1-dev libxcb-res0-dev libgtk-4-dev libnotify-bin xbindkeys dunst kitty redshift mate-polkit-bin mate-polkit mate-polkit-common polkitd
mkdir -p ~/.builds/dk
git clone https://bitbucket.org/natemaia/dk.git ~/.builds/dk
cd ~/.builds/dk
make
sudo make install
mkdir -p ~/.config/dk
cd ~/.config/dk
touch dkrc
cat << 'EOF' > dkrc
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
EOF

chmod +x ~/.config/dk/dkrc
cd ~

cat << 'EOF' > .xbindkeysrc
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
EOF

cargo install ripdrag

echo '
-----------
finished dk
-----------
'
sleep 3
clear

# eww install
if [[ $eww == "y" || $eww == "Y" ]]; then

echo '
--------------
Installing eww
--------------
'
mkdir -p ~/.config/eww
sudo apt install -y libgtk-3-dev libgtk-layer-shell-dev libpango1.0-dev libdbusmenu-gtk3-dev libcairo2-dev libglib2.0-dev libc6-dev libgio-2.0-dev libgtk-3-dev libdbusmenu-glib-dev libdbusmenu-gtk3-dev libdbusmenu-gtk3-4
mkdir ~/.builds/eww
git clone https://github.com/elkowar/eww ~/.builds/eww
cd ~/.builds/eww
cargo build --release --no-default-features --features x11
cd target/release
chmod +x ./eww
sudo mv ./eww /usr/bin/eww

echo '
------------
Finished eww
------------
'
sleep 3
clear
fi

# picom Install
if [[ $picom == "y" || $picom == "Y" ]]; then
echo '
----------------
Installing picom
----------------
'
sudo apt install -y picom
echo '
--------------
finished picom
--------------
'
sleep 3
clear
fi

# rofi Install
if [[ $rofi == "y" || $rofi == "Y" ]]; then
echo '
---------------
Installing rofi
---------------
'
sleep 3
sudo apt install -y gcc make autoconf automake pkg-config flex bison check libpango1.0-dev libcairo2-dev libcairo-script-interpreter2 libglib2.0-dev libgdk-pixbuf-2.0-dev libstartup-notification0-dev libxkbcommon-dev libxkbcommon-x11-dev libxcb1-dev libxcb-xkb-dev libxcb-randr0-dev libxcb-xinerama0-dev libxcb-util-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-cursor-dev libxcb-imdkit-dev
cd ~/.builds
wget https://github.com/davatorium/rofi/releases/download/1.7.8/rofi-1.7.8.tar.gz
tar xf rofi-1.7.8.tar.gz
rm rofi-1.7.8.tar.gz
cd rofi-1.7.8
mkdir build && cd build
../configure
make
sudo make install
cd ~
echo '
-------------
finished rofi
-------------
'
sleep 3
clear
fi

# Browser Install
if [[ $browser == "y" || $browser == "Y" ]]; then
echo '
----------------------
Installing zen browser
----------------------
'
sleep 3
mkdir ~/.tarballs
cd ~/.tarballs
wget https://github.com/zen-browser/desktop/releases/latest/download/zen.linux-x86_64.tar.xz
tar xf zen.linux-x86_64.tar.xz
rm zen.linux-x86_64.tar.xz
mkdir -p ~/.local/share/applications
cd ~/.local/share/applications
touch zen.desktop
chmod +x zen.desktop
cat << 'EOF' > zen.desktop
[Desktop Entry]
Name=Zen Browser
Comment=Experience tranquillity while browsing the web without people tracking you!
Keywords=web;browser;internet
Exec=~/.tarballs/zen/zen %u
Icon=~/.tarballs/zen/browser/chrome/icons/default/default128.png
Terminal=false
StartupNotify=true
StartupWMClass=zen
NoDisplay=false
Type=Application
MimeType=text/html;text/xml;application/xhtml+xml;application/vnd.mozilla.xul+xml;text/mml;x-scheme-handler/http;x-scheme-handler/https;
Categories=Network;WebBrowser;
Actions=new-window;new-private-window;profile-manager-window;
[Desktop Action new-window]
Name=Open a New Window
Exec=~/.tarballs/zen/zen --new-window %u
[Desktop Action new-private-window]
Name=Open a New Private Window
Exec=~/.tarballs/zen/zen --private-window %u
[Desktop Action profile-manager-window]
Name=Open the Profile Manager
Exec=~/.tarballs/zen/zen --ProfileManager
EOF
cd ~
echo '
--------------------
finished zen browser
--------------------
'
sleep 3 
clear
fi

if [[ $vesktop == "y" || $vesktop == "Y" ]]; then
echo '
------------------
Installing vesktop
------------------
'
sleep 3
cd ~/Applications
LATEST_VESK=$(curl -s "https://api.github.com/repos/Vencord/Vesktop/releases/latest" | jq -r '.tag_name')
VERSION=$(echo "$LATEST_VESK" | sed 's/^v//')
ASSET_NAME="Vesktop-${VERSION}.AppImage"
wget "https://github.com/Vencord/Vesktop/releases/download/${LATEST_VESK}/${ASSET_NAME}"
chmod +x *
cd ~
echo '
------------------
Installing vesktop
------------------
'
sleep 3
clear
fi

# extras Install
if [[ $extras == "y" || $extras == "Y" ]]; then
		cd ~
		echo -e "\nFirst, we install appimagelauncher"
		sleep 1
		# dl appimagelauncher
		wget https://github.com/TheAssassin/AppImageLauncher/releases/download/v2.2.0/appimagelauncher_2.2.0-travis995.0f91801.bionic_amd64.deb
		sudo apt install -y ./appimagelauncher_2.2.0-travis995.0f91801.bionic_amd64.deb
		rm ./appimagelauncher_2.2.0-travis995.0f91801.bionic_amd64.deb
		
		# dl steam
		echo -e "\nNext, we install steam"
		sleep 1
		wget "https://cdn.fastly.steamstatic.com/client/installer/steam.deb"
		sudo apt install -y ./steam.deb
		rm steam.deb
		
		# Create applications folder and cd into it
		echo -e "\nNow, we install GI, HSR, & ZZZ"
		sleep 1
		cd ~/Applications
		
		# wget Naming stuff
		LATEST_GI=$(curl -s "https://api.github.com/repos/an-anime-team/an-anime-game-launcher/releases/latest" | jq -r '.tag_name')
		LATEST_HSR=$(curl -s "https://api.github.com/repos/an-anime-team/the-honkers-railway-launcher/releases/latest" | jq -r '.tag_name')
		LATEST_ZZZ=$(curl -s "https://api.github.com/repos/an-anime-team/sleepy-launcher/releases/latest" | jq -r '.tag_name')
		LATEST_OTD=$(curl -s "https://api.github.com/repos/OpenTabletDriver/OpenTabletDriver/releases/latest" | jq -r '.tag_name')
		# Download stuff
		wget "https://github.com/an-anime-team/an-anime-game-launcher/releases/download/${LATEST_GI}/anime-game-launcher" "https://github.com/an-anime-team/the-honkers-railway-launcher/releases/download/${LATEST_HSR}/honkers-railway-launcher" "https://github.com/an-anime-team/sleepy-launcher/releases/download/${LATEST_ZZZ}/sleepy-launcher"
		chmod +x *
		
		# dl icons for stuff
		mkdir ./icons
		cd ./icons
		wget -O zzz.png "https://files.catbox.moe/rnypxx.png" 
		wget -O hsr.png "https://files.catbox.moe/tvnagc.png" 
		wget -O genshin.png "https://files.catbox.moe/hlxu32.png"
		
		# make stuff work
		mkdir -p ~/.local/share/applications				
		cd ~/.local/share/applications
		touch genshin.desktop hsr.desktop zzz.desktop
		chmod +x genshin.desktop hsr.desktop zzz.desktop
		
# make genshin work
cat << 'EOF' > genshin.desktop
[Desktop Entry]
Version=1.5
Type=Application
Name=Genshin Impact
Comment=Explore the world of Tevyat! ...or just do your dalies
Icon=/home/jizzy/Applications/icons/genshin.png
Exec=/home/jizzy/Applications/anime-game-launcher
Terminal=false
Categories=Game;
EOF

# make hsr work
cat << 'EOF' > hsr.desktop
[Desktop Entry]
Version=1.5
Type=Application
Name=Honkai Star Rail
Comment=Take a trip on the Astral Express
Icon=/home/jizzy/Applications/icons/hsr.png
Exec=/home/jizzy/Applications/honkers-railway-launcher
Terminal=false
Categories=Game;
EOF

# make zzz work
cat << 'EOF' > zzz.desktop
[Desktop Entry]
Version=1.5
Type=Application
Name=Zenless Zone Zero
Comment=I dont have anything to say about this one lol
Icon=/home/jizzy/Applications/icons/zzz.png
Exec=/home/jizzy/Applications/sleepy-launcher
Terminal=false
Categories=Game;
EOF

# osu Install
echo -e "And finally, we install oss"
sleep 1
sudo apt install zenity xdg-desktop-portal mangohud 
git clone https://github.com/NelloKudo/osu-winello.git ~/.builds/osu-winello
cd ~/.builds/osu-winello
chmod +x osu-winello.sh
./osu-winello.sh
cd ~
wget https://github.com/OpenTabletDriver/OpenTabletDriver/releases/download/v0.6.5.1/opentabletdriver-0.6.5.1-1-x64.deb
sudo apt install -y ./opentabletdriver-0.6.5.1-1-x64.deb
rm opentabletdriver-0.6.5.1-1-x64.deb
cd ~/Applications
wget https://github.com/LizardByte/Sunshine/releases/download/v2025.122.141614/sunshine.AppImage
cd ~
echo -e "You miiiiiighttt.... wanna update sunshine..."
sleep 3
fi

fi

# Server install
if [[ $server == "y" || $server == "Y" ]]; then
echo '
-----------------------
installing server stuff
-----------------------
'
sleep 3 
		sudo apt install -y samba
		# Add Docker's official GPG key:
		sudo install -m 0755 -d /etc/apt/keyrings
		sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
		sudo chmod a+r /etc/apt/keyrings/docker.asc

		# Add the repository to Apt sources:
		echo \
			"deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
			bookworm stable" | \
			sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
			sudo apt-get update
			sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
echo '
---------------------
finished server stuff
---------------------
'
sleep 3 
clear
fi


echo -e "use chezmoi to get ur dotfiles!!!\n"
sleep 1

echo -e "\nFinished nyaa!"
