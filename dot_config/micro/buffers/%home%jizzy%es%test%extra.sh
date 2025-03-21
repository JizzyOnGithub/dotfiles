HSerializedBuffer�� EventHandler�� Cursor�� ModTime��   8��EventHandler�� 	UndoStack�� 	RedoStack��   '��TEStack�� Top�� Size   *��Element�� Value�� Next��   B��	TextEvent�� C�� 	EventType Deltas�� Time��   m��Cursor�� Loc�� LastVisualX CurSelection�� OrigSelection�� NewTrailingWsY Num   ��Loc�� X Y   ��[2]buffer.Loc�� ��  ��[]buffer.Delta�� ��  0��Delta�� Text
 Start�� End��   ��Time��   �3���> "> > >  > *> >     �\I��/e�  >  > > >    > >     �\I�/�F�  > > > >   x> >     �\I�˛��  > > > >  > +> >     �\I�
��<�  > > > >    > >     �\I�,�&��  > > > >   d> >     �\I��4�  
> 
> 
> 
>   o
> >     �\I��2��  > > > >   m> 
>     �\I�go�  > > > >   h> >     �\I�:
F<�  > > > >  > c> >     �\I�1�0��  > > > >   		> >     �\I�#��u�  �F< .�F< �F< �F<   
�F< >     �\I�#��      <4  
      �\Gi:V���  :4 F:4 :4 :4 :4  K:4 <4     �\G\� ��  84 D84 84 84 84  S84 :4     �\G\g '�  64 B64 64 64 64  E64 84     �\G\i�j�  44 @44 44 44 44  V44 64     �\G\Ď�  64 B64 64 64 64  T44 64     �\G[" ]��  84 D84 84 84 84  A64 84     �\G[��[�  :4 F:4 :4 :4 :4  G84 :4     �\G[����     2   �Q# extras?
echo -e "\nUhh... oh yeah, do you want genshin, hsr, zzz, osu, Vesktop, and steam? (y/n):"
read extras
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
		
		# Create applications folder and cd into it
		mkdir ~/Applications
		cd ~/Applications
		
		# wget Naming stuff
		LATEST_GI=$(curl -s "https://api.github.com/repos/an-anime-team/an-anime-game-launcher/releases/latest" | jq -r '.tag_name')
		LATEST_HSR=$(curl -s "https://api.github.com/repos/an-anime-team/the-honkers-railway-launcher/releases/latest" | jq -r '.tag_name')
		LATEST_ZZZ=$(curl -s "https://api.github.com/repos/an-anime-team/sleepy-launcher/releases/latest" | jq -r '.tag_name')
		LATEST_VESK=$(curl -s "https://api.github.com/repos/Vencord/Vesktop/releases/latest" | jq -r '.tag_name')
		# Moar naming stuff for vesktop since the naming is different
		VERSION=$(echo "$LATEST_TAG" | sed 's/^v//')
		ASSET_NAME="Vesktop-${VERSION}.AppImage"
		# Download stuff
		wget "https://github.com/an-anime-team/an-anime-game-launcher/releases/download/${LATEST_GI}/anime-game-launcher" "https://github.com/an-anime-team/the-honkers-railway-launcher/releases/download/${LATEST_HSR}/honkers-railway-launcher" "https://github.com/an-anime-team/sleepy-launcher/releases/download/${LATEST_ZZZ}/sleepy-launcher" "https://github.com/Vencord/Vesktop/releases/download/${LATEST_VESK}/${ASSET_NAME}"
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
fi ��     �\GI�]��   > �� 2   ��# extras?
echo -e "\nUhh... oh yeah, do you want genshin, hsr, zzz, osu, Vesktop, and steam? (y/n):"
read extras

# extras Install
if [[ $extras == "y" || $extras == "Y" ]];
	then
		cd ~
		# dl appimagelauncher
		wget https://github.com/TheAssassin/AppImageLauncher/releases/download/v2.2.0/appimagelauncher_2.2.0-travis995.0f91801.bionic_amd64.deb
		sudo apt install -y ./appimagelauncher_2.2.0-travis995.0f91801.bionic_amd64.deb
		rm ./appimagelauncher_2.2.0-travis995.0f91801.bionic_amd64.deb
		
		# dl steam
		wget "https://cdn.fastly.steamstatic.com/client/installer/steam.deb"
		sudo apt install -y ./steam.deb
		rm steam.deb
		
		# Create applications folder and cd into it
		mkdir ~/Applications
		cd ~/Applications
		
		# wget Naming stuff
		LATEST_GI=$(curl -s "https://api.github.com/repos/an-anime-team/an-anime-game-launcher/releases/latest" | jq -r '.tag_name')
		LATEST_HSR=$(curl -s "https://api.github.com/repos/an-anime-team/the-honkers-railway-launcher/releases/latest" | jq -r '.tag_name')
		LATEST_ZZZ=$(curl -s "https://api.github.com/repos/an-anime-team/sleepy-launcher/releases/latest" | jq -r '.tag_name')
		LATEST_VESK=$(curl -s "https://api.github.com/repos/Vencord/Vesktop/releases/latest" | jq -r '.tag_name')
		# Moar naming stuff for vesktop since the naming is different
		VERSION=$(echo "$LATEST_VESK" | sed 's/^v//')
		ASSET_NAME="Vesktop-${VERSION}.AppImage"

		# Download stuff
		wget "https://github.com/an-anime-team/an-anime-game-launcher/releases/download/${LATEST_GI}/anime-game-launcher" "https://github.com/an-anime-team/the-honkers-railway-launcher/releases/download/${LATEST_HSR}/honkers-railway-launcher" "https://github.com/an-anime-team/sleepy-launcher/releases/download/${LATEST_ZZZ}/sleepy-launcher" "https://github.com/Vencord/Vesktop/releases/download/${LATEST_VESK}/${ASSET_NAME}"

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
 ��     �\GI��  :8 F:8 :8 :8   K:8 <8     �\G�IF�  88 D88 88 88   S88 :8     �\G���  68 B68 68 68   E68 88     �\GbE�  48 @48 48 48   V48 68     �\G9ݨ��  68 B68 68 68   T48 68     �\F�7�$��  88 D88 88 88   A68 88     �\F�-����  :8 F:8 :8 :8   G88 :8     �\F�#�i��        s      �\D�$�|�        a      �\D�!��7�  
 
  
 
  r
      �\D�e�:�        t 
     �\D���Y�        x      �\D�,
v8�        e      �\D�:QV�        Games      �\D�:e�      ��  p# extras?
echo -e "\nUhh... oh yeah, do you want genshin, hsr, zzz, osu, Vesktop, and steam? (y/n):"
read extras      �\D�w��      ��  
      �\D��́�      ��  
      �\D�_U�        �## Games Install
if [[ $extras == "y" || $extras == "Y" ]];
	then
		cd ~
		# dl appimagelauncher
		wget https://github.com/TheAssassin/AppImageLauncher/releases/download/v2.2.0/appimagelauncher_2.2.0-travis995.0f91801.bionic_amd64.deb
		sudo apt install -y ./appimagelauncher_2.2.0-travis995.0f91801.bionic_amd64.deb
		rm ./appimagelauncher_2.2.0-travis995.0f91801.bionic_amd64.deb
		
		# dl steam
		wget "https://cdn.fastly.steamstatic.com/client/installer/steam.deb"
		sudo apt install -y ./steam.deb
		rm steam.deb
		
		# Create applications folder and cd into it
		mkdir ~/Applications
		cd ~/Applications
		
		# wget Naming stuff
		LATEST_GI=$(curl -s "https://api.github.com/repos/an-anime-team/an-anime-game-launcher/releases/latest" | jq -r '.tag_name')
		LATEST_HSR=$(curl -s "https://api.github.com/repos/an-anime-team/the-honkers-railway-launcher/releases/latest" | jq -r '.tag_name')
		LATEST_ZZZ=$(curl -s "https://api.github.com/repos/an-anime-team/sleepy-launcher/releases/latest" | jq -r '.tag_name')
		LATEST_VESK=$(curl -s "https://api.github.com/repos/Vencord/Vesktop/releases/latest" | jq -r '.tag_name')
		# Moar naming stuff for vesktop since the naming is different
		VERSION=$(echo "$LATEST_TAG" | sed 's/^v//')
		ASSET_NAME="Vesktop-${VERSION}.AppImage"

		# Download stuff
		wget "https://github.com/an-anime-team/an-anime-game-launcher/releases/download/${LATEST_GI}/anime-game-launcher" "https://github.com/an-anime-team/the-honkers-railway-launcher/releases/download/${LATEST_HSR}/honkers-railway-launcher" "https://github.com/an-anime-team/sleepy-launcher/releases/download/${LATEST_ZZZ}/sleepy-launcher" "https://github.com/Vencord/Vesktop/releases/download/${LATEST_VESK}/${ASSET_NAME}"

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
fi ��     �\D� �G_�                                          P   >J    �\I�#^f�  