-- App vars
local browser = hs.appfinder.appFromName("Google Chrome")
local iterm = hs.appfinder.appFromName("iTerm")
local subl = hs.appfinder.appFromName("Sublime Text")
local macvim = hs.appfinder.appFromName("MacVim")
local qq = hs.appfinder.appFromName("QQ")
local emacs = hs.appfinder.appFromName("Emacs")

hs.window.animationDuration = 0.05
hs.window.setShadows(false)
hs.application.enableSpotlightForNameSearches(true)

ext = {
  frame = {},
  win = {},
  app = {},
  utils = {},
  cache = {},
  watchers = {}
}

local mash = {"cmd", "alt", "ctrl"}
local mash_apps = {"cmd", "alt"}

-------------------- push ----------------------
local push_mash = {"cmd", "alt"}
hs.hotkey.bind(push_mash, "left", function() push(0,0,0.5,1) end)
hs.hotkey.bind(push_mash, "right", function() push(0.5,0,0.5,1) end)
hs.hotkey.bind(push_mash, "up", function() push(0,0,1,0.5) end)
hs.hotkey.bind(push_mash, "down", function() push(0,0.5,1,0.5) end)
hs.hotkey.bind(push_mash, "1", function() push(0,0,0.5,0.5) end)
hs.hotkey.bind(push_mash, "2", function() push(0.5,0,0.5,0.5) end)
hs.hotkey.bind(push_mash, "3", function() push(0,0.5,0.5,0.5) end)
hs.hotkey.bind(push_mash, "4", function() push(0.5,0.5,0.5,0.5) end)
hs.hotkey.bind(push_mash, "c", function() push(0.15,0.15,0.7,0.7) end)
hs.hotkey.bind(push_mash, "f", function() push(0,0,1,1) end)

-------------------- resize ----------------------
local resize_mash = {"alt"} -- anchor right-bottom
local resize_mash_plus = {"alt", "ctrl"} -- anchor left-top
hs.hotkey.bind(resize_mash, "left", function() resize(0.1,0,0,0) end)
hs.hotkey.bind(resize_mash, "right", function() resize(0,0.1,0,0) end)
hs.hotkey.bind(resize_mash, "up", function() resize(0,0,0.1,0) end)
hs.hotkey.bind(resize_mash, "down", function() resize(0,0,0,0.1) end)
hs.hotkey.bind(resize_mash_plus, "left", function() resize(0,-0.1,0,0) end)
hs.hotkey.bind(resize_mash_plus, "right", function() resize(-0.1,0,0,0) end)
hs.hotkey.bind(resize_mash_plus, "up", function() resize(0,0,0,-0.1) end)
hs.hotkey.bind(resize_mash_plus, "down", function() resize(0,0,-0.1,0) end)

-------------------- focus ----------------------
local focus_mash = {"ctrl"}
--hs.hotkey.bind(focus_mash, "h", function() ext.win.focus("h") end)
--hs.hotkey.bind(focus_mash, "l", function() ext.win.focus("l") end)
--hs.hotkey.bind(focus_mash, "j", function() ext.win.focus("j") end)
--hs.hotkey.bind(focus_mash, "k", function() ext.win.focus("k") end)

-------------------- launch ----------------------
local launch_mash = {"cmd"}
hs.hotkey.bind(launch_mash, "0", function() ext.app.forceLaunchOrFocus("Dingtalk") end)
hs.hotkey.bind(launch_mash, "1", function() ext.app.forceLaunchOrFocus("Finder") end)
-- hs.hotkey.bind(launch_mash, "2", function() ext.app.forceLaunchOrFocus("QQ") end)
hs.hotkey.bind(launch_mash, "2", function() ext.app.forceLaunchOrFocus("2Do") end)
hs.hotkey.bind(launch_mash, "3", function() ext.app.forceLaunchOrFocus("Google Chrome") end)
-- hs.hotkey.bind(launch_mash, "4", function() ext.app.forceLaunchOrFocus("vimr") end)
hs.hotkey.bind(launch_mash, "4", function() ext.app.forceLaunchOrFocus("alacritty") end)
-- hs.hotkey.bind(launch_mash, "5", function() ext.app.forceLaunchOrFocus("iTerm") end)
hs.hotkey.bind(launch_mash, "5", function() ext.app.forceLaunchOrFocus("kitty") end)
hs.hotkey.bind(launch_mash, "6", function() ext.app.forceLaunchOrFocus("Visual Studio Code") end)
hs.hotkey.bind(launch_mash, "7", function() ext.app.forceLaunchOrFocus("Preview") end)
hs.hotkey.bind(launch_mash, "8", function() ext.app.forceLaunchOrFocus("NeteaseMusic") end)
hs.hotkey.bind(launch_mash, "9", function() ext.app.forceLaunchOrFocus("WeChat") end)

-------------------- layout ----------------------
local layout_mash = {"ctrl", "alt", "cmd"}
local screen_name = "Color LCD"
local windowLayout = {
  {"iTerm2", nil, screen_name, hs.layout.left50, nil, nil}
}
hs.hotkey.bind(layout_mash, "1", function() hs.layout.apply(windowLayout) end)

-------------------- screen ----------------------
local layout_mash = {"ctrl", "alt", "cmd"}
hs.hotkey.bind(layout_mash, "left", function() moveToScreen("second") end)
hs.hotkey.bind(layout_mash, "right", function() moveToScreen("main") end)

-------------------- function ----------------------
function push(x, y, w, h)
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w*x)
  f.y = max.y + (max.h*y)
  f.w = max.w*w
  f.h = max.h*h
  win:setFrame(f)
  hs.alert.show(string.format("new position: %d, %d", f.x, f.y))
end

function resize(left, right, top, bottom)
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  local next_width = f.w + (max.w*right) + (max.w*left)
  local next_x = f.x - (max.w*left)
  local next_height = f.h + (max.h*top) + (max.h*bottom)
  local next_y = f.y - (max.h*top)
  f.x = (next_x > 0 and next_x) or 0
  f.y = (next_y > 0 and next_y) or 0
  f.w = next_width
  f.h = next_height
  win:setFrame(f)
  hs.alert.show(string.format("new size: %d, %d", f.w, f.h))
end

function ext.win.focus(direction)
  local win = hs.window.focusedWindow()
  local functions = {
    k = 'focusWindowNorth',
    j = 'focusWindowSouth',
    h = 'focusWindowWest',
    l = 'focusWindowEast'
  }

  hs.window[functions[direction]](win)
end

function ext.app.forceLaunchOrFocus(appName)
  showAlert(appName)
  -- first focus with hammerspoon
  hs.application.launchOrFocus(appName)

  -- clear timer if exists
  if ext.cache.launchTimer then ext.cache.launchTimer:stop() end

  --[[
  -- wait 500ms for window to appear and try hard to show the window
  ext.cache.launchTimer = hs.timer.doAfter(0.5, function()
    local frontmostApp     = hs.application.frontmostApplication()
    local frontmostWindows = hs.fnutils.filter(frontmostApp:allWindows(), function(win) return win:isStandard() end)

    -- break if this app is not frontmost (when/why?)
    if frontmostApp:title() ~= appName then
      print('Expected app in front: ' .. appName .. ' got: ' .. frontmostApp:title())
      return
    end

    if #frontmostWindows == 0 then
      -- check if there's app name in window menu (Calendar, Messages, etc...)
      if frontmostApp:findMenuItem({ 'Window', appName }) then
        -- select it, usually moves to space with this window
        frontmostApp:selectMenuItem({ 'Window', appName })
      else
        -- otherwise send cmd-n to create new window
        hs.eventtap.keyStroke({ 'cmd' }, 'n')
      end
    end
  end)
  ]]
end

function reloadConfig(files)
    doReload = false
    for _,file in pairs(files) do
        if file:sub(-4) == ".lua" then
            doReload = true
        end
    end
    if doReload then
        hs.reload()
    end
end
local myWatcher = hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig):start()
hs.alert.show("Config loaded")

function showAlert(text)
  hs.alert.show(text)
end

function getScreenName(tag)
  local allScreens = hs.screen.allScreens()
  if #allScreens == 1 then
    return allScrrents[1]:name()
  elseif #allScreens == 2 then
    local sname = nil
    if tag == "main" then
      return allScreens[1]:name()
    elseif tag == "second" then
      return allScreens[2]:name()
    else
      return nil
    end
  else
    return nil
  end
end

function moveToScreen(tag)
  local win = hs.window.focusedWindow()
  local screenName = getScreenName(tag)
  local app = win:application()
  local appName = app:name()
  local title = win:title()
  local winLayout = {
    {appName, title, screenName, hs.layout.maximized, nil, nil}
  }
  hs.layout.apply(winLayout)
end
