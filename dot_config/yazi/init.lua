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
    { tag = "home", path = home, key = "~" },
    { tag = "ServerNyaa", path = "/media/server", key = "s" },
    { tag = "hdd1", path = "/media/sda1", key = "h" },
    { tag = ".config", path = "/home/jizzy/.config", key = "c" },
    { tag = "Downloads", path = "/home/jizzy/Downloads", key = "d" },

  },
  notify = true, -- notify after hopping, default is false
  fuzzy_cmd = "sk", -- fuzzy searching command, default is fzf
})

require("full-border"):setup()
