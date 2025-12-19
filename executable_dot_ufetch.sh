#!/bin/sh
#
# ufetch-debian - tiny system info for debian

## INFO

# user is already defined
host="$(hostname)"
os="Debian $(cat /etc/debian_version)"
kernel="$(uname -sr | sed 's/Linux //')"
gpu="$(lspci | grep -i vga | grep -o '\[GeForce.*\]' | tr -d '[]' | cut -d' ' -f2-3)"
packages="$(dpkg -l | grep -c ^i)"
cpu="$(lscpu | grep "Model name" | sed 's/.*Intel(R) Core(TM) i\([0-9]\)-\([0-9]\+\)K.*/Intel i\1 \2K/' | xargs)"

## UI DETECTION

parse_rcs() {
	for f in "${@}"; do
		wm="$(tail -n 1 "${f}" 2> /dev/null | cut -d ' ' -f 2)"
		[ -n "${wm}" ] && echo "${wm}" && return
	done
}

rcwm="$(parse_rcs "${HOME}/.xinitrc" "${HOME}/.xsession")"

ui='unknown'
uitype='UI'
if [ -n "${DE}" ]; then
	ui="${DE}"
	uitype='DE'
elif [ -n "${WM}" ]; then
	ui="${WM}"
	uitype='WM'
elif [ -n "${XDG_CURRENT_DESKTOP}" ]; then
	ui="${XDG_CURRENT_DESKTOP}"
	uitype='WM'
elif [ -n "${DESKTOP_SESSION}" ]; then
	ui="${DESKTOP_SESSION}"
	uitype='WM'
elif [ -n "${rcwm}" ]; then
	ui="${rcwm}"
	uitype='WM'
elif [ -n "${XDG_SESSION_TYPE}" ]; then
	ui="${XDG_SESSION_TYPE}"
fi

ui="$(basename "${ui}")"

## DEFINE COLORS

# probably don't change these
if [ -x "$(command -v tput)" ]; then
	bold="$(tput bold 2> /dev/null)"
	black="$(tput setaf 0 2> /dev/null)"
	red="$(tput setaf 1 2> /dev/null)"
	green="$(tput setaf 2 2> /dev/null)"
	yellow="$(tput setaf 3 2> /dev/null)"
	blue="$(tput setaf 4 2> /dev/null)"
	magenta="$(tput setaf 5 2> /dev/null)"
	cyan="$(tput setaf 6 2> /dev/null)"
	white="$(tput setaf 7 2> /dev/null)"
	reset="$(tput sgr0 2> /dev/null)"
fi

# you can change these
lc="${reset}${bold}${red}"          # labels
nc="${reset}${bold}${red}"          # user and hostname
ic="${reset}"                       # info
c0="${reset}${red}"                 # first color

## OUTPUT

cat << EOF 
${c0}     ,---._   ${lc}${USER}${ic}@${lc}${host}${reset}
${c0}   /\`  __  \\  ${lc}OS:        ${ic}${os}${reset}
${c0}  |   /    |  ${lc}KRNL:      ${ic}${kernel}${reset}
${c0}  |   ${c1}\`.__.\`  ${lc}GPU:       ${ic}${gpu}${reset}
${c0}   \          ${lc}CPU:       ${ic}${cpu}${reset}
${c0}    \`-,_      ${lc}PKGS:      ${ic}${packages}${reset}
${c0}              ${lc}${uitype}:        ${ic}${ui}${reset}
EOF
