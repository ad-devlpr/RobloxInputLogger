getgenv().logger_stat = false

local library = loadstring(game:HttpGet("https://pastebin.com/raw/jLe6HkTP"))()
local Window = library:AddWindow("Roblox Input Logger by Ad - V1.1", {
		main_color = Color3.fromRGB(41, 74, 122),
		min_size = Vector2.new(500, 140),
		toggle_key = Enum.KeyCode.RightShift,
		can_resize = false,
	})
	local Tab = Window:AddTab("Main")
	Tab:AddLabel("Hello! Thanks for using my script. Use to toggle below to start or stop!")
	
	local Switch1 = Tab:AddSwitch("Logger", function(bool)
			getgenv().logger_stat = bool
	end)
	Switch1:Set(false)
	
	Tab:AddButton("Clear Console", function()
        rconsoleclear()
        rconsolename("Roblox Input Logger by Ad - V1.1")
        p("Idle.")
		end)
	
	Tab:Show()
	library:FormatWindows() --Idek what this does lmafo

function p(a,b)if string.find(identifyexecutor(),"Script")then if b==true then rconsoleprint("\n[CONSOLE]: ","white")rconsoleprint(tostring(a),"green")else rconsoleprint("\n[CONSOLE]: ","white")rconsoleprint(tostring(a),"red")end elseif string.find(identifyexecutor(),"Synapse")then if b==true then rconsoleprint("@@LIGHT_GRAY@@")rconsoleprint("\n[CONSOLE]: ")rconsoleprint("@@GREEN@@")rconsoleprint(tostring(a))elseif b==false then rconsoleprint("@@LIGHT_GRAY@@")rconsoleprint("\n[CONSOLE]: ")rconsoleprint("@@RED@@")rconsoleprint(tostring(a))end elseif rconsoleprint then if b==true then rconsoleprint("@@LIGHT_GRAY@@")rconsoleprint("\n[CONSOLE]: ")rconsoleprint("@@GREEN@@")rconsoleprint(tostring(a))elseif b==false then rconsoleprint("@@LIGHT_GRAY@@")rconsoleprint("\n[CONSOLE]: ")rconsoleprint("@@RED@@")rconsoleprint(tostring(a))end end end
-- < Main Script > --

rconsolename("Roblox Input Logger by Ad#9999 - V1.1")
p("Idle.")

game:GetService("UserInputService").InputBegan:Connect(function(iobj, gpe)
    if gpe then return end
    if tostring(iobj.KeyCode) == "Enum.KeyCode.Unknown" then return else
        if logger_stat == true then p(tostring(iobj.KeyCode)) end
    end
end)
