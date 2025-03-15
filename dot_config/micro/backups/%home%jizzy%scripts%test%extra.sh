# extras?
echo -e "\nUhh... oh yeah, do you want genshin, hsr, zzz, osu, Vesktop, and steam? (y/n):"
read extras

# Vesktop?
echo -e "Vesktop? (y/n):"
read vesktop

if [[ $vesktop == "y" || $vesktop == "Y" ]]; then
LATEST_VESK=$(curl -s "https://api.github.com/repos/Vencord/Vesktop/releases/latest" | jq -r '.tag_name')
# Moar naming stuff for vesktop since the naming is different
VERSION=$(echo "$LATEST_VESK" | sed 's/^v//')
ASSET_NAME="Vesktop-${VERSION}.AppImage"
wget "https://github.com/Vencord/Vesktop/releases/download/${LATEST_VESK}/${ASSET_NAME}"
echo -e '
----------------
Vesktop Finished 
----------------
'
sleep 3
clear	





# extras Install
if [[ $extras == "y" || $extras == "Y" ]]; then
		cd ~
		# dl appimagelauncher
		wget https://github.com/TheAssassin/AppImageLauncher/releases/download/v2.2.0/appimagelauncher_2.2.0-travis995.0f91801.bionic_amd64.deb
		sudo apt install -y ./appimagelauncher_2.2.0-travis995.0f91801.bionic_amd64.deb
		rm ./appimagelauncher_2.2.0-travis995.0f91801.bionic_amd64.deb
		
		# dl steam
		wget "https://cdn.fastly.steamstatic.com/client/installer/steam.deb"
		sudo apt install -y ./steam.deb
		rm steam.deb
				
		# wget Naming stuff
		LATEST_GI=$(curl -s "https://api.github.com/repos/an-anime-team/an-anime-game-launcher/releases/latest" | jq -r '.tag_name')
		LATEST_HSR=$(curl -s "https://api.github.com/repos/an-anime-team/the-honkers-railway-launcher/releases/latest" | jq -r '.tag_name')
		LATEST_ZZZ=$(curl -s "https://api.github.com/repos/an-anime-team/sleepy-launcher/releases/latest" | jq -r '.tag_name')
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
		cat <<EOF > genshin.desktop
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
		cat <<EOF > hsr.desktop
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
		cat <<EOF > zzz.desktop
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
		sudo apt install zenity xdg-desktop-portal
		git clone https://github.com/NelloKudo/osu-winello.git ~/.builds/osu-winello
		cd ~/.builds/osu-winello
		chmod +x osu-winello.sh
		./osu-winello.sh
		cd
else
	echo -e "Skipping games n stuff...\n"
fi
