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
echo "deb http://deb.debian.org/debian/ sid main contrib non-free non-free-firmware" > /etc/apt/sources.list

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

echo -e "Would you like to skip the initial setup? (yazi, zsh/ohmyzsh) (n/y):"
read setup 
		
if [[ $setup == "n" || $setup == "N" ]]; then
# Install required packages
sudo apt install -y btop micro git curl wget ssh rsync gnupg unzip zip tar ncdu lsof net-tools apt-transport-https ca-certificates build-essential python3 python3-pip lshw bash-completion eza network-manager jq feh gcc make autoconf automake pkg-config flex bison check gpg file zoxide imagemagick xclip fzf poppler-utils 7zip ffmpeg exiftool mediainfo nala cifs-utils --no-install-recommends
sudo apt remove -y vim

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
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
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

curl -s 'https://liquorix.net/install-liquorix.sh' | sudo bash

# dk?
echo -e "\nOkay cool. Now, do you wanna install spectrwm and lightdm? (y/n):"
read spectrwm

# dk Install
if [[ $spectrwm == "y" || $spectrwm == "Y" ]]; then

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

sudo apt install -y build-essential pkg-config libxcb1-dev libxcb-util-dev libxcb-randr0-dev libxcb-keysyms1-dev libxcb-icccm4-dev libxcb-xinput-dev libxcb-xtest0-dev libfontconfig1-dev libxft-dev libxcursor-dev libbsd-dev libx11-xcb-dev
cd ~/.builds
git clone https://github.com/conformal/spectrwm
cd spectrwm/linux
make
sudo make install
cargo install ripdrag
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
