getgenv().logger_stat=false;local a=loadstring(game:HttpGet("https://pastebin.com/raw/jLe6HkTP"))()local b=a:AddWindow("Roblox Input Logger by Ad",{main_color=Color3.fromRGB(41,74,122),min_size=Vector2.new(500,140),toggle_key=Enum.KeyCode.RightShift,can_resize=false})local c=b:AddTab("Main")c:AddLabel("Hello! Thanks for using my script. Use to toggle below to start or stop!")local d=c:AddSwitch("Logger",function(e)getgenv().logger_stat=e end)d:Set(false)c:AddButton("Clear Console",function()rconsoleclear()rconsolename("Roblox Input Logger by Ad")p("Idle.")end)c:Show()a:FormatWindows()function greencolor()local f=identifyexecutor()if string.find(f,"Synapse")then return"@@GREEN@@"elseif string.find(f,"ScriptWare")then return"green"elseif f=="Krnl"then return"@@GREEN@@"end end;function p(g)rconsoleprint(greencolor())rconsoleprint("\n[CONSOLE]: "..g)end;rconsolename("Roblox Input Logger by Ad#9999")p("Idle.")game:GetService("UserInputService").InputBegan:Connect(function(h,i)if i then return end;if tostring(h.KeyCode)=="Enum.KeyCode.Unknown"then return else if logger_stat==true then p(tostring(h.KeyCode))end end end)