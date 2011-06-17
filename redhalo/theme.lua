-- redhalo, awesome3 theme, by

--{{{ Main
require("awful.util")

theme = {}

home          = os.getenv("HOME")
config        = awful.util.getdir("config")
shared        = "/usr/share/awesome"
if not awful.util.file_readable(shared .. "/icons/awesome16.png") then
    shared    = "/usr/share/local/awesome"
end
sharedicons   = shared .. "/icons"
sharedthemes  = shared .. "/themes"
themes        = config .. "/themes"
themename     = "/redhalo"
if not awful.util.file_readable(themes .. themename .. "/theme.lua") then
       themes = sharedthemes
end
themedir      = themes .. themename

wallpaper1    = themedir .. "/background.jpg"
wallpaper2    = themedir .. "/background.png"
wallpaper3    = sharedthemes .. "/zenburn/zenburn-background.png"
wallpaper4    = sharedthemes .. "/default/background.png"
wpscript      = home .. "/.wallpaper"

if awful.util.file_readable(wallpaper1) then
	theme.wallpaper_cmd = { "awsetbg " .. wallpaper1 }
elseif awful.util.file_readable(wallpaper2) then
	theme.wallpaper_cmd = { "awsetbg " .. wallpaper2 }
elseif awful.util.file_readable(wpscript) then
	theme.wallpaper_cmd = { "sh " .. wpscript }
elseif awful.util.file_readable(wallpaper3) then
	theme.wallpaper_cmd = { "awsetbg " .. wallpaper3 }
else
	theme.wallpaper_cmd = { "awsetbg " .. wallpaper4 }
end

if awful.util.file_readable(config .. "/vain/init.lua") then
    theme.useless_gap_width  = "3"
end
--}}}

theme.font = "profont 8"

theme.fg_normal = "#f8f8f2"
theme.fg_focus = "#262729"
theme.fg_urgent = "#262729"
theme.fg_title = "#66d9ef"
theme.fg_disabled = "#262729"
theme.bg_normal = "#262729"
theme.bg_focus = "#a6e22e"
theme.bg_urgent = "#f92671"
theme.bg_disabled = "#5e7175"
theme.bg_hover = "#5e7175"

theme.border_width = 0
theme.border_normal = "#505050"
theme.border_focus = "#292929"
theme.border_marked = "#ce5666"

theme.awesome_icon = themedir .. "/awesome16.png"

return theme
