!#/bin/bash
fConf=$(find . -name ".clnExst")
fCheck=$(cat .file)
DOTW=$(date +%a)

if [ $fConf == "0"]; then
  if [ $DOTW == "Mon" ]; then
    notify-send -u normal "Cleaning/Sorting soon... (15 mins)"
    sleep 900

    notify-send -u critical "Cleaning/Sorting VERY soon... (5 mins)"
    sleep 300

    cd /home/jizzy/Downloads
    find . -type f -print0 | xargs -0 file --mime-type | grep -F 'image/' | cut -d ':' -f 1 | sed -e "s/'/'\\\\''/g;s/\(.*\)/'\1'/" | sed ':a;N;$!ba;s/\n/ /g'
  fi
fi
# 
