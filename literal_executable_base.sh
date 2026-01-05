CURRENT_USER=$(whoami)

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

# Install deps for everything
sudo apt install -y btop micro git curl wget ssh rsync gnupg unzip zip tar ncdu lsof net-tools apt-transport-https ca-certificates build-essential python3 python3-pip lshw bash-completion eza network-manager jq feh gcc make autoconf automake pkg-config flex bison check gpg file zoxide imagemagick xclip fzf poppler-utils 7zip ffmpeg exiftool mediainfo nala cifs-utils zsh --no-install-recommends

mkdir ~/.builds
mkdir ~/Downloads
mkdir ~/Pictures
mkdir ~/Videos
mkdir ~/Applications
mkdir ~/.config

# Rustup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
. "$HOME/.cargo/env"

# OhMyZsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Atuin
curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh

# Yazi
cargo install --locked yazi-fm yazi-cli

# Yazi Conf
cd ~/.config 
mkdir -p yazi/plugins
cd ~/.config/yazi
touch yazi.toml package.toml keymap.toml init.lua
cd ~

# Install some yazi plugins
ya pack -a stelcodes/bunny
ya pack -a yazi-rs/plugins:full-border
ya pack -a DreamMaoMao/clipboard
ya pack -a TD-Sky/sudo
ya pack -a yazi-rs/plugins:chmod
ya pack -a ahkohd/eza-preview
ya pack -a boydaihungst/mediainfo
git clone https://github.com/ndtoan96/ouch.yazi.git ~/.config/yazi/plugins/ouch.yazi

# Kernel
echo -e "\nLiquorix, Xanmod, or None? [S / X / N]:"
read krnl

if [[ $krnl == "S" || $krnl == "s" ]]; then
  curl -s 'https://liquorix.net/install-liquorix.sh' | sudo bash
elif [[ $krnl == "X" || $krnl == "x" ]]; then
  wget -qO - https://dl.xanmod.org/archive.key | sudo gpg --dearmor -vo /etc/apt/keyrings/xanmod-archive-keyring.gpg
  echo "deb [signed-by=/etc/apt/keyrings/xanmod-archive-keyring.gpg] http://deb.xanmod.org $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/xanmod-release.list
  sudo apt update && sudo apt install -y linux-xanmod-x64v3
else
  echo -e "\nSkipping kernel"
fi

mkdir ~/.builds

echo -e "\nSpectrwm, dk, openbox, or none? [S / D / O / N]:"
read wm

if [[ $wm == "S" || $wm == "s" ]]; then
  # Deps
  sudo apt install -y build-essential pkg-config libxcb1-dev libxcb-util-dev libxcb-randr0-dev libxcb-keysyms1-dev libxcb-icccm4-dev libxcb-xinput-dev libxcb-xtest0-dev libfontconfig1-dev libxft-dev libxcursor-dev libbsd-dev libx11-xcb-dev 

  cd ~/.builds

  git clone https://github.com/conformal/spectrwm
  cd spectrwm/linux

  make 
  sudo make install
elif [[ $wm == "D" || $wm == "d" ]]; then
  sudo apt install -y libxcb-randr0-dev libxcb-util-dev libxcb-icccm4-dev libxcb-cursor-dev libxcb-keysyms1-dev libxcb-res0-dev
  cd ~/.builds
  git clone https://github.com/natemaia/dk
  cd dk
  make
  sudo make install
elif [[ $wm == "O" || $wm == "o" ]]; then
  sudo apt install -y openbox
else 
  echo -e "\nNo wm then"
fi

if [[ $wm != "N" || $wm != "n" || $wm != "" ]]; then
  cargo install ripdrag
  sudo apt install -y picom
  
  # eww
  mkdir -p ~/.config/eww
  sudo apt install -y libgtk-3-dev libgtk-layer-shell-dev libpango1.0-dev libdbusmenu-gtk3-dev libcairo2-dev libglib2.0-dev libc6-dev libgio-2.0-dev libgtk-3-dev libdbusmenu-glib-dev libdbusmenu-gtk3-dev libdbusmenu-gtk3-4
  mkdir ~/.builds/eww
  git clone https://github.com/elkowar/eww ~/.builds/eww
  cd ~/.builds/eww
  cargo build --release --no-default-features --features x11
  cd target/release
  chmod +x ./eww
  sudo mv ./eww /usr/bin/eww

  # rofi
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

  # librewolf
  sudo apt update && sudo apt install extrepo -y
  sudo extrepo enable librewolf
  sudo apt update && sudo apt install librewolf -y

  # vesktop
  mkdir ~/Applications
  cd ~/Applications
  LATEST_VESK=$(curl -s "https://api.github.com/repos/Vencord/Vesktop/releases/latest" | jq -r '.tag_name')
  VERSION=$(echo "$LATEST_VESK" | sed 's/^v//')
  ASSET_NAME="Vesktop-${VERSION}.AppImage"
  wget "https://github.com/Vencord/Vesktop/releases/download/${LATEST_VESK}/${ASSET_NAME}"
  chmod +x *
  cd ~

  # AppImageLauncher
  wget https://github.com/TheAssassin/AppImageLauncher/releases/download/v2.2.0/appimagelauncher_2.2.0-travis995.0f91801.bionic_amd64.deb
		sudo apt install -y ./appimagelauncher_2.2.0-travis995.0f91801.bionic_amd64.deb
		rm ./appimagelauncher_2.2.0-travis995.0f91801.bionic_amd64.deb

  # Chezmoi
  LATEST_CHEZ=$(curl -s "https://api.github.com/repos/twpayne/chezmoi/releases/latest" | jq -r '.tag_name' | sed 's/^v//')
  wget "https://github.com/twpayne/chezmoi/releases/download/v${LATEST_CHEZ}/chezmoi_${LATEST_CHEZ}_linux_amd64.deb"
  sudo apt install -y ./chezmoi_${LATEST_CHEZ}_linux_amd64.deb
  rm chezmoi_${LATEST_CHEZ}_linux_amd64.deb
fi
