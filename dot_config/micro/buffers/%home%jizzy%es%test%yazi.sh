HSerializedBuffer’ EventHandler’ Cursor’ ModTime’   8’EventHandler’ 	UndoStack’ 	RedoStack’   '’TEStack’ Top’ Size   *’Element’ Value’ Next’   B’	TextEvent’ C’ 	EventType Deltas’ Time’   m’Cursor’ Loc’ LastVisualX CurSelection’ OrigSelection’ NewTrailingWsY Num   ’Loc’ X Y   ’[2]buffer.Loc’ ’  ’[]buffer.Delta’ ’  0’Delta’ Text
 Start’ End’   ’Time’   žL’      žņ## Yazi Install
cargo install --locked yazi-fm yazi-cli
cd .config 
mkdir -p yazi/plugins
cd ~/.config/yazi
touch yazi.toml package.toml keymap.toml init.lua

# Install some yazi plugins
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
  ]
  prepend_previewers = [
  	# Archive previewer
  	{ mime = "application/*zip",            run = "ouch" },
  	{ mime = "application/x-tar",           run = "ouch" },
  	{ mime = "application/x-bzip2",         run = "ouch" },
  	{ mime = "application/x-7z-compressed", run = "ouch" },
  	{ mime = "application/x-rar",           run = "ouch" },
  	{ mime = "application/x-xz",            run = "ouch" },
  ]
  prepend_previewers = [
  	{ mime = "*/",	run = "eza-preview"}
  ]
EOF žb     ß]R:xÄMž      žb    ß]R?.óšyž  