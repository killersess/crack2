local lib = loadstring(game:HttpGet"https://raw.githubusercontent.com/killersess/crack2/main/ui.lua")()
local win = lib:Window("AstralnicHub",Color3.fromRGB(255, 85, 0))
local rs = game["Run Service"]

local tab = win:Tab("Home")
tab:Label("Press [X] to open/close the script")
tab:Label("Game: Ragdoll Engine")
tab:Label("Player: "..game.Players.LocalPlayer.DisplayName.." | (@"..game.Players.LocalPlayer.Name..")")
Home()

local tab2 = win:Tab("Scripts")

local function PushAura()
    if _G.PushAura == true then
      if game.Players.LocalPlayer.Backpack:FindFirstChild("Push") then
         game.Players.LocalPlayer.Backpack.Push.Parent = game.Players.LocalPlayer.Character
    end
        while wait() do
            if _G.PushAura == true then
                pcall(
                    function()
                        for i, v in pairs(game.Players:GetPlayers()) do
                            if v.Name == game.Players.LocalPlayer.Name then
                            else
                                local args = {
                                    [1] = game:GetService("Players")[v.Name].Character
                                }

                                game:GetService("Players").LocalPlayer.Character.Push.PushTool:FireServer(unpack(args))
                            end
                        end
                    end
                )
            end
        end
    else 
        _G.PushAura = false
        while wait() do
            if _G.PushAura == true then
                pcall(
                    function()
                        for i, v in pairs(game.Players:GetPlayers()) do
                            if v.Name == game.Players.LocalPlayer.Name then
                            else
                                local args = {
                                    [1] = game:GetService("Players")[v.Name].Character
                                }

                                game:GetService("Players").LocalPlayer.Character.Push.PushTool:FireServer(unpack(args))
                            end
                        end
                    end
                )
            end
        end
    end
end

local function AntiRagdoll()
    if _G.AntiRagdoll == true then
        if  game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                local stop = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character.HumanoidRootPart)
                stop.MaxForce = Vector3.new(0,0,0)
            end
            if game.Players.LocalPlayer.Character:FindFirstChild("Falling down") then
                local Fallingdown = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Falling down")
                Fallingdown.Disabled = true
            end
            if game.Players.LocalPlayer.Character:FindFirstChild("Pushed") then
                local Pushed = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pushed")
                Pushed.Disabled = true
            end
            if game.Players.LocalPlayer.Character:FindFirstChild("RagdollMe") then
                local RagdollMe = game:GetService("Players").LocalPlayer.Character:FindFirstChild("RagdollMe")
                RagdollMe.Disabled = true 
            end
            if game.Players.LocalPlayer.Character:FindFirstChild("Swimming") then
                local Swimming = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Swimming")
                Swimming.Disabled = true
            end
            if game.Players.LocalPlayer.Character:FindFirstChild("KillSript") then
                local KillScript = game:GetService("Players").LocalPlayer.Character:FindFirstChild("KillScript")
                KillScript.Disabled = true
            end
            if game.Players.LocalPlayer.Character:FindFirstChild("StartRagdoll") then
                local StartRagdoll = game:GetService("Players").LocalPlayer.Character:FindFirstChild("StartRagdoll")
                StartRagdoll.Disabled = true
            end
        end
    else
        if _G.AntiRagdoll == false then
            if  game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                game.Players.LocalPlayer.Character.HumanoidRootPart.BodyVelocity:Remove()
            end     
            if game.Players.LocalPlayer.Character:FindFirstChild("Falling down") then
                local Fallingdown = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Falling down")
                Fallingdown.Disabled = false
            end
            if game.Players.LocalPlayer.Character:FindFirstChild("Pushed") then
                local Pushed = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pushed")
                Pushed.Disabled = false
            end
            if game.Players.LocalPlayer.Character:FindFirstChild("RagdollMe") then
                local RagdollMe = game:GetService("Players").LocalPlayer.Character:FindFirstChild("RagdollMe")
                RagdollMe.Disabled = false 
            end
            if game.Players.LocalPlayer.Character:FindFirstChild("Swimming") then
                local Swimming = game:GetService("Players").LocalPlayer.Character:FindFirstChild("Swimming")
                Swimming.Disabled = false
            end
            if game.Players.LocalPlayer.Character:FindFirstChild("KillSript") then
                local KillScript = game:GetService("Players").LocalPlayer.Character:FindFirstChild("KillScript")
                KillScript.Disabled = false
            end
            if game.Players.LocalPlayer.Character:FindFirstChild("StartRagdoll") then
                local StartRagdoll = game:GetService("Players").LocalPlayer.Character:FindFirstChild("StartRagdoll")
                StartRagdoll.Disabled = false
            end 
        end

    end
end

local function bombas()
    if _G.Bombas == true then
        lib:Notification("Warning", "In some exploits this doessn't work because of the firetouchinterests function!", "Okay!")
        rs.RenderStepped:Connect(function()         
            if _G.Bombas == true then
                for i,p in pairs(game.Players:GetPlayers()) do
                    for i,b in pairs(p.Character:GetChildren()) do 
                        if game.Workspace:FindFirstChild("Landmines") then
                            for i, v in pairs(game.Workspace.Landmines:GetDescendants()) do
                                if v:FindFirstChild("TouchInterest") then
                                    firetouchinterest(v, b, 0)
                                    firetouchinterest(v, b, 0)
                                end
                            end
                        end
                    end
                end
            end
        end)
    else 
        _G.Bombas = false
        rs.RenderStepped:Connect(function()         
            if _G.Bombas == true then
                for i,p in pairs(game.Players:GetPlayers()) do
                    for i,b in pairs(p.Character:GetChildren()) do 
                        if game.Workspace:FindFirstChild("Landmines") then
                            for i,v in pairs(game.Workspace.Landmines:GetDescendants()) do
                                if v:FindFirstChild("TouchInterest") then
                                    firetouchinterest(v, b, 0)
                                    firetouchinterest(v, b, 0)
                                end
                            end
                        end
                    end
                end
            end
        end)
    end 
end


local function potion()
    if _G.potion == true then
        local humanoid = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
        if game.Players.LocalPlayer.Character:FindFirstChild("potion") then
            local tool = game.Players.LocalPlayer.Character.potion
            humanoid:UnequipTools(tool)
        end
        if game.Players.LocalPlayer.Backpack:FindFirstChild("potion") then
            game.Players.LocalPlayer.Backpack.potion.GripRight = Vector3.new(0.019996,0,-0.9998)
            game.Players.LocalPlayer.Backpack.potion.GripUp = Vector3.new(0.9996,0.02,0.019992)
            game.Players.LocalPlayer.Backpack.potion.GripForward = Vector3.new(-0.0199988,0.9998,-0.000379769)
            game.Players.LocalPlayer.Backpack.potion.GripPos = Vector3.new(1.7,0.5,-1)
            local humanoid = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
            if game.Players.LocalPlayer.Backpack:FindFirstChild("potion") then
                local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("potion")
                humanoid:EquipTool(tool)
            end
        end     
    else
        _G.potion = false
        if _G.potion == false then
            local humanoid = game.Players.LocalPlayer.Character.Humanoid
            if game.Players.LocalPlayer.Character:FindFirstChild("potion") then
                local tool = game.Players.LocalPlayer.Character.potion
                humanoid:UnequipTools(tool) 
            end
            if game.Players.LocalPlayer.Backpack:FindFirstChild("potion") then
                game.Players.LocalPlayer.Backpack.potion.GripRight = Vector3.new(0.216986,0,-0.976175)
                game.Players.LocalPlayer.Backpack.potion.GripUp = Vector3.new(0,1,0)
                game.Players.LocalPlayer.Backpack.potion.GripForward = Vector3.new(-0.976175,-0,-0.216986)
                game.Players.LocalPlayer.Backpack.potion.GripPos = Vector3.new(0.1,-0.521498,-0.0332914)
                local humanoid = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                if game.Players.LocalPlayer.Backpack:FindFirstChild("potion") then
                    local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("potion")
                    humanoid:EquipTool(tool)
                end
            end     

        end
    end
end

tab2:Toggle("Push Aura",false, function(t)
    _G.PushAura = t
    PushAura()
end)

tab2:Toggle("Anti Ragdoll / Push",false, function(t)
    _G.AntiRagdoll = t
    AntiRagdoll()
end)
tab2:Toggle("Spam Minefield [Lags the server a lil']",false, function(t)
    _G.Bombas = t
    bombas()
end)
tab2:Toggle("Potion Dick",false, function(t)
    _G.potion = t
    potion()
end)
tab2:Button("Potion Lag [Dont abuse, they're can kick you]", function()
    if game.Players.LocalPlayer.Backpack:FindFirstChild("potion") then
        local A = game:GetService('Players').LocalPlayer
        local B = A.Character
        local C = A.Backpack
        local Hum = B:FindFirstChildOfClass('Humanoid')
        local Tool = nil

        if not Hum then
            return
        end

        Hum:UnequipTools()

        for _, v in next, C:GetChildren() do
            if v:IsA('Tool') and v:FindFirstChild('Handle') then
                Tool = v
                break
            end
        end

        if not Tool then
            return
        end

        Tool.Parent = C
        Tool.Grip = CFrame.new(0/0, 0/0, 0/0)
        for i = 1, 10000 do
            Tool.Parent = B
            Tool.Parent = C
        end 
        end
end)
tab2:Button("Permanent Potion Effect [Drink potion first]", function()
    local Humanoid = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
    if game.Players.LocalPlayer.Backpack:FindFirstChild("potion") then
        local tool = game.Players.LocalPlayer.Backpack.potion
        Humanoid:EquipTool(tool)
        if game.Players.LocalPlayer.Character:FindFirstChild("potion") then
            if game.Players.LocalPlayer.Character.potion:FindFirstChild("Cap") then
                game.Players.LocalPlayer.Character.potion.Cap:Remove()
            end
            if game.Players.LocalPlayer.Character:FindFirstChild("potion") then
                if game.Players.LocalPlayer.Character.potion:FindFirstChild("InSide") then
                    game.Players.LocalPlayer.Character.potion.InSide:Remove()
                end
                if game.Players.LocalPlayer.Character:FindFirstChild("potion") then
                    if game.Players.LocalPlayer.Character.potion:FindFirstChild("Script") then
                        game.Players.LocalPlayer.Character.potion.Script:Remove()
                    end 
                end
                if game.Players.LocalPlayer.Character:FindFirstChild("potion") then
                    if game.Players.LocalPlayer.Character.potion:FindFirstChild("Cap") then
                        game.Players.LocalPlayer.Character.potion.Cap:Remove()
                    end
                end
                if game.Players.LocalPlayer.Character:FindFirstChild("potion") then
                    if game.Players.LocalPlayer.Character.potion:FindFirstChild("InSide") then
                        game.Players.LocalPlayer.Character.potion.InSide:Remove() 
                    end
                end
                if game.Players.LocalPlayer.Character:FindFirstChild("potion") then
                    if game.Players.LocalPlayer.Character.potion:FindFirstChild("Script") then
                        game.Players.LocalPlayer.Character.potion.Script:Remove()
                    end
                end
            end
        end
    end
end)
tab2:Button("Potion Fling [but  need potion gamepass]", function()
    if game.Players.LocalPlayer.Character:FindFirstChild("potion") then
        local humanoid = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
        local tool = game.Players.LocalPlayer.Character:FindFirstChild("potion")
        humanoid:EquipTool(tool)
        if game.Players.LocalPlayer.Character:FindFirstChild("potion") then
            if game.Players.LocalPlayer.Character.potion:FindFirstChild("Cap") then
                game.Players.LocalPlayer.Character.potion.Cap:Remove()
            end
        end
        if game.Players.LocalPlayer.Character:FindFirstChild("potion") then
            if game.Players.LocalPlayer.Character.potion:FindFirstChild("Script") then 
                game.Players.LocalPlayer.Character.potion.Script:Remove()
            end     
        end
        if game.Players.LocalPlayer.Character:FindFirstChild("potion") then
            if game.Players.LocalPlayer.Character:FindFirstChild("InSide") then
                game.Players.LocalPlayer.Character.potion.InSide:Remove()
                Clipped = true
                function Noclip()
                    Clipped = false
                    function Noclipped()
                        if Clip == false and game:GetService("Players").LocalPlayer.Character ~= nil then
                            for _, child in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                                if child:IsA("BasePart") and child.CanCollide == true then
                                    child.CanCollide = false
                                end
                            end
                        end
                    end
                    Noclipping = game:GetService('RunService').Stepped:connect(Noclipped)
                end


                local tool = game:GetService("Players").LocalPlayer.Character:WaitForChild("potion")

                if tool then
                    tool.Parent = game:GetService("Players").LocalPlayer.Character
                    tool.Handle.Massless = true
                    RestoreCFling = {
                        Grip = tool.GripPos;
                    }
                    tool.GripPos = Vector3.new(5000, 5000, 5000)
                    Noclip()
                    Noclipping:Disconnect()
                    local Player = game:service('Players').LocalPlayer
                    Player.Character['potion'].Parent = Player.Character
                end
            end
            local humanoid = game.Players.LocalPlayer.Character.Humanoid
            if game.Players.LocalPlayer.Character.potion:FindFirstChild("Cap") then
                game.Players.LocalPlayer.Character.potion.Cap:Remove()
            end
            if game.Players.LocalPlayer.Character.potion:FindFirstChild("Script") then 
                game.Players.LocalPlayer.Character.potion.Script:Remove()       
            end
            if game.Players.LocalPlayer.Character.potion:FindFirstChild("InSide") then
                game.Players.LocalPlayer.Character.potion.InSide:Remove()
                Clipped = true
                function Noclip()
                    Clipped = false
                    function Noclipped()
                        if Clip == false and game:GetService("Players").LocalPlayer.Character ~= nil then
                            for _, child in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                                if child:IsA("BasePart") and child.CanCollide == true then
                                    child.CanCollide = false
                                end
                            end
                        end
                    end
                    Noclipping = game:GetService('RunService').Stepped:connect(Noclipped)
                end


                local tool = game:GetService("Players").LocalPlayer.Character:WaitForChild("potion")

                if tool then
                    tool.Parent = game:GetService("Players").LocalPlayer.Character
                    tool.Handle.Massless = true
                    RestoreCFling = {
                        Grip = tool.GripPos;
                    }
                    tool.GripPos = Vector3.new(5000, 5000, 5000)
                    wait()
                    Noclip()
                    wait()
                    Noclipping:Disconnect()
                end
            end
        end
    end
    local humanoid = game.Players.LocalPlayer.Character.Humanoid
    if game.Players.LocalPlayer.Character:FindFirstChild("potion") then
        local tool = game.Players.LocalPlayer.Character.potion 
        humanoid:EquipTool(tool)
    end
    if game.Players.LocalPlayer.Backpack:FindFirstChild("potion") then
        local humanoid = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild("potion")
        humanoid:EquipTool(tool)
        if game.Players.LocalPlayer.Character:FindFirstChild("potion") then
            if game.Players.LocalPlayer.Character.potion:FindFirstChild("Cap") then
                game.Players.LocalPlayer.Character.potion.Cap:Remove()
            end
        end
        if game.Players.LocalPlayer.Character:FindFirstChild("potion") then
            if game.Players.LocalPlayer.Character.potion:FindFirstChild("Script") then 
                game.Players.LocalPlayer.Character.potion.Script:Remove()
            end     
        end
        if game.Players.LocalPlayer.Character:FindFirstChild("potion") then
            if game.Players.LocalPlayer.Character:FindFirstChild("InSide") then
                game.Players.LocalPlayer.Character.potion.InSide:Remove()
                Clipped = true
                function Noclip()
                    Clipped = false
                    function Noclipped()
                        if Clip == false and game:GetService("Players").LocalPlayer.Character ~= nil then
                            for _, child in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                                if child:IsA("BasePart") and child.CanCollide == true then
                                    child.CanCollide = false
                                end
                            end
                        end
                    end
                    Noclipping = game:GetService('RunService').Stepped:connect(Noclipped)
                end


                local tool = game:GetService("Players").LocalPlayer.Character:WaitForChild("potion")

                if tool then
                    tool.Parent = game:GetService("Players").LocalPlayer.Backpack
                    tool.Handle.Massless = true
                    RestoreCFling = {
                        Grip = tool.GripPos;
                    }
                    tool.GripPos = Vector3.new(5000, 5000, 5000)
                    Noclip()
                    Noclipping:Disconnect()
                    local Player = game:service('Players').LocalPlayer
                    Player.Backpack['potion'].Parent = Player.Character
                end
            end
            local humanoid = game.Players.LocalPlayer.Character.Humanoid
            if game.Players.LocalPlayer.Character.potion:FindFirstChild("Cap") then
                game.Players.LocalPlayer.Character.potion.Cap:Remove()
            end
            if game.Players.LocalPlayer.Character.potion:FindFirstChild("Script") then 
                game.Players.LocalPlayer.Character.potion.Script:Remove()       
            end
            if game.Players.LocalPlayer.Character.potion:FindFirstChild("InSide") then
                game.Players.LocalPlayer.Character.potion.InSide:Remove()
                Clipped = true
                function Noclip()
                    Clipped = false
                    function Noclipped()
                        if Clip == false and game:GetService("Players").LocalPlayer.Character ~= nil then
                            for _, child in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                                if child:IsA("BasePart") and child.CanCollide == true then
                                    child.CanCollide = false
                                end
                            end
                        end
                    end
                    Noclipping = game:GetService('RunService').Stepped:connect(Noclipped)
                end


                local tool = game:GetService("Players").LocalPlayer.Character:WaitForChild("potion")

                if tool then
                    tool.Parent = game:GetService("Players").LocalPlayer.Backpack
                    tool.Handle.Massless = true
                    RestoreCFling = {
                        Grip = tool.GripPos;
                    }
                    tool.GripPos = Vector3.new(5000, 5000, 5000)
                    wait()
                    Noclip()
                    wait()
                    Noclipping:Disconnect()
                end
            end
        end
    end
    local humanoid = game.Players.LocalPlayer.Character.Humanoid
    if game.Players.LocalPlayer.Backpack:FindFirstChild("potion") then
        local tool = game.Players.LocalPlayer.Backpack.potion 
        humanoid:EquipTool(tool)
    end 
end)
tab2:Button("Drop potion", function()
    if game.Players.LocalPlayer.Character:FindFirstChild("potion") then
        local NOW = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        game.Players.LocalPlayer.Character.Humanoid.Name = 1
        local l = game.Players.LocalPlayer.Character["1"]:Clone()
        l.Parent = game.Players.LocalPlayer.Character
        l.Name = "Humanoid"
        wait()
        game.Players.LocalPlayer.Character["1"]:Destroy()
        game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
        game.Players.LocalPlayer.Character.Animate.Disabled = true
        wait()
        game.Players.LocalPlayer.Character.Animate.Disabled = false
        game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
        local function tp(player,player2)
            local char1,char2=player.Character,player2.Character
            if char1 and char2 then
                char1.HumanoidRootPart.CFrame = char2.HumanoidRootPart.CFrame
            end
        end
        local function getout(player,player2)
            local char1,char2=player.Character,player2.Character
            if char1 and char2 then
                char1:MoveTo(char2.Head.Position)
            end
        end
    end
    if game.Players.LocalPlayer.Backpack:FindFirstChild("potion") then
   game.Players.LocalPlayer.Backpack.potion.Parent = game.Players.LocalPlayer.Character
      wait(.2)
            local NOW = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            game.Players.LocalPlayer.Character.Humanoid.Name = 1
            local l = game.Players.LocalPlayer.Character["1"]:Clone()
            l.Parent = game.Players.LocalPlayer.Character
            l.Name = "Humanoid"
            wait()
            game.Players.LocalPlayer.Character["1"]:Destroy()
            game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
            game.Players.LocalPlayer.Character.Animate.Disabled = true
            wait()
            game.Players.LocalPlayer.Character.Animate.Disabled = false
            game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
            local function tp(player,player2)
                local char1,char2=player.Character,player2.Character
                if char1 and char2 then
                    char1.HumanoidRootPart.CFrame = char2.HumanoidRootPart.CFrame
                end
            end
            local function getout(player,player2)
                local char1,char2=player.Character,player2.Character
                if char1 and char2 then
                    char1:MoveTo(char2.Head.Position)
                end
        end
    end
end)
tab2:Button("No push cooldown [remove]", function()
    if game.Players.LocalPlayer.Character:FindFirstChild("Push") then
        local tool = game.Players.LocalPlayer.Character.Push
        tool.Activated:Connect(function()
            if game.CoreGui:FindFirstChild("lib") then
                pcall(
                    function()
                        for i, v in pairs(game.Players:GetPlayers()) do
                            if v.Name == game.Players.LocalPlayer.Name then
                            else
                                local args = {
                                    [1] = game:GetService("Players")[v.Name].Character
                                }

                                game:GetService("Players").LocalPlayer.Character.Push.PushTool:FireServer(unpack(args))
                            end
                        end
                    end
                )   
            end
        end)
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Push") then
         game.Players.LocalPlayer.Backpack.Push.Parent = game.Players.LocalPlayer.Character
         end
        if game.Players.LocalPlayer.Backpack:FindFirstChild("Push") then
            tool.Activated:Connect(function()
                if game.CoreGui:FindFirstChild("UI") then
                    pcall(
                        function()
                            for i, v in pairs(game.Players:GetPlayers()) do
                                if v.Name == game.Players.LocalPlayer.Name then
                                else
                                    local args = {
                                        [1] = game:GetService("Players")[v.Name].Character
                                    }

                                    game:GetService("Players").LocalPlayer.Character.Push.PushTool:FireServer(unpack(args))
                                end
                            end
                        end
                    )
                end
            end)
        end
    end 
end)
tab2:Button("Change Size 1 [drink potion first]", function()
    local LocalPlayer = game:GetService("Players").LocalPlayer
    local Character = LocalPlayer.Character
    local Humanoid = Character:FindFirstChildOfClass("Humanoid")

    local function rm()
        for i,v in pairs(Character:GetDescendants()) do
            if v:IsA("BasePart") then
                if v.Name == "Handle" or v.Name == "Head" then
                    if Character.Head:FindFirstChild("OriginalSize") then
                        Character.Head.OriginalSize:Destroy()
                    end
                else
                    for i,cav in pairs(v:GetDescendants()) do
                        if cav:IsA("Attachment") then
                            if cav:FindFirstChild("OriginalPosition") then
                                cav.OriginalPosition:Destroy()  
                            end
                        end
                    end
                    if v:FindFirstChild("OriginalSize") then
                        v:FindFirstChild("OriginalSize"):Destroy()
                    end
                    if v:FindFirstChild("AvatarPartScaleType") then
                        v:FindFirstChild("AvatarPartScaleType"):Destroy()
                    end
                end
            end
        end
    end

    rm()
    wait(0.5)
    if Humanoid:FindFirstChild("BodyProportionScale") then
        Humanoid:FindFirstChild("BodyProportionScale"):Destroy()
    end
    wait(1)

    rm()
    wait(0.5)
    if Humanoid:FindFirstChild("BodyHeightScale") then
        Humanoid:FindFirstChild("BodyHeightScale"):Destroy()
    end
    wait(1)

    rm()
    wait(0.5)
    if Humanoid:FindFirstChild("BodyWidthScale") then
        Humanoid:FindFirstChild("BodyWidthScale"):Destroy()
    end
    wait(1)

    rm()
    wait(0.5)
    if Humanoid:FindFirstChild("BodyDepthScale") then
        Humanoid:FindFirstChild("BodyDepthScale"):Destroy()
    end
    wait(1)

    rm()
    wait(0.5)
    if Humanoid:FindFirstChild("HeadScale") then
        Humanoid:FindFirstChild("HeadScale"):Destroy()
    end
    wait(1) 
end)
tab2:Button("Change Size 2 [drink potion first]", function()
    local LocalPlayer = game:GetService("Players").LocalPlayer
    local Character = LocalPlayer.Character
    local Humanoid = Character:FindFirstChildOfClass("Humanoid")

    local function rm()
        for i,v in pairs(Character:GetDescendants()) do
            if v:IsA("BasePart") then
                if v.Name ~= "Head" then
                    for i,cav in pairs(v:GetDescendants()) do
                        if cav:IsA("Attachment") then
                            if cav:FindFirstChild("OriginalPosition") then
                                cav.OriginalPosition:Destroy()
                            end
                        end
                    end
                    if v:FindFirstChild("OriginalSize") then
                        v:FindFirstChild("OriginalSize"):Destroy()
                    end
                    if v:FindFirstChild("AvatarPartScaleType") then
                        v:FindFirstChild("AvatarPartScaleType"):Destroy()
                    end
                end
            end
        end
    end

    rm()

    wait(0.5)
    if Humanoid:FindFirstChild("BodyTypeScale") then
        Humanoid:FindFirstChild("BodyTypeScale"):Destroy()
    end

    wait(1)

    rm()

    wait(0.5)

    if Humanoid:FindFirstChild("BodyWidthScale") then
        Humanoid:FindFirstChild("BodyWidthScale"):Destroy()
    end
    wait(1)

    rm()

    wait(0.5)

    if Humanoid:FindFirstChild("BodyDepthScale") then
        Humanoid:FindFirstChild("BodyDepthScale"):Destroy()
    end
    wait(1)

    rm()

    wait()
end)

local tab3 = win:Tab("Target")

tab3:Textbox("Give Potion [Short / Full Username]",true, function(t)
    local p1 = game.Players.LocalPlayer.Character.HumanoidRootPart
    local pos = p1.CFrame

    for i, v in pairs(game.Players:GetPlayers()) do
        if v.DisplayName == t then
            local timeRemaining = 5

            while timeRemaining > 0 do
                local pos = p1.CFrame
                p1.CFrame = game.Players[v.Name].Character.HumanoidRootPart.CFrame
                timeRemaining = timeRemaining - 1   
            end
            if game.Players.LocalPlayer.Character:FindFirstChild("potion") then
                game.Players.LocalPlayer.Character.potion.Parent = game.Players.LocalPlayer.Backpack
                game.Players.LocalPlayer.Backpack.potion.Parent = game.Players.LocalPlayer.Character

                local NOW = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                game.Players.LocalPlayer.Character.Humanoid.Name = 1
                local l = game.Players.LocalPlayer.Character["1"]:Clone()
                l.Parent = game.Players.LocalPlayer.Character
                l.Name = "Humanoid"
                wait()
                game.Players.LocalPlayer.Character["1"]:Destroy()
                game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
                game.Players.LocalPlayer.Character.Animate.Disabled = true
                wait()
                game.Players.LocalPlayer.Character.Animate.Disabled = false
                game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
                local function tp(player,player2)
                    local char1,char2=player.Character,player2.Character
                    if char1 and char2 then
                        char1.HumanoidRootPart.CFrame = char2.HumanoidRootPart.CFrame
                    end
                end
                local function getout(player,player2)
                    local char1,char2=player.Character,player2.Character
                    if char1 and char2 then
                        char1:MoveTo(char2.Head.Position)
                    end
                end
            end
            wait(.8)
            p1.CFrame = pos
        end
    end
    if game.Players:FindFirstChild(t) then
        if game.Players.LocalPlayer.Backpack:FindFirstChild("potion") then
            game.Players.LocalPlayer.Backpack.potion.Parent = game.Players.LocalPlayer.Character
            local timeRemaining = 5

            while timeRemaining > 0 do
                local pos = p1.CFrame
                p1.CFrame = game.Players[t].Character.HumanoidRootPart.CFrame
                timeRemaining = timeRemaining - 1   
            end

            local NOW = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            game.Players.LocalPlayer.Character.Humanoid.Name = 1
            local l = game.Players.LocalPlayer.Character["1"]:Clone()
            l.Parent = game.Players.LocalPlayer.Character
            l.Name = "Humanoid"
            wait()
            game.Players.LocalPlayer.Character["1"]:Destroy()
            game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
            game.Players.LocalPlayer.Character.Animate.Disabled = true
            wait()
            game.Players.LocalPlayer.Character.Animate.Disabled = false
            game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
            local function tp(player,player2)
                local char1,char2=player.Character,player2.Character
                if char1 and char2 then
                    char1.HumanoidRootPart.CFrame = char2.HumanoidRootPart.CFrame
                end
            end
            local function getout(player,player2)
                local char1,char2=player.Character,player2.Character
                if char1 and char2 then
                    char1:MoveTo(char2.Head.Position)
                end
            end
        end
        wait(.8)
        p1.CFrame = pos
    end
    if game.Players.LocalPlayer.Character:FindFirstChild("potion") then
        local p1 = game.Players.LocalPlayer.Character.HumanoidRootPart
        local pos = p1.CFrame


        for i,v in pairs(game.Players:GetChildren()) do
            if (string.sub(string.lower(v.Name),1,string.len(t))) == string.lower(t) then
                if game.Players:FindFirstChild(t) then
                    local timeRemaining = 5

                    while timeRemaining > 0 do
                        local pos = p1.CFrame
                        p1.CFrame = game.Players[t].Character.HumanoidRootPart.CFrame
                        timeRemaining = timeRemaining - 1   
                    end
                    local NOW = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    game.Players.LocalPlayer.Character.Humanoid.Name = 1
                    local l = game.Players.LocalPlayer.Character["1"]:Clone()
                    l.Parent = game.Players.LocalPlayer.Character
                    l.Name = "Humanoid"
                    wait()
                    game.Players.LocalPlayer.Character["1"]:Destroy()
                    game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
                    game.Players.LocalPlayer.Character.Animate.Disabled = true
                    wait()
                    game.Players.LocalPlayer.Character.Animate.Disabled = false
                    game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
                    local function tp(player,player2)
                        local char1,char2=player.Character,player2.Character
                        if char1 and char2 then
                            char1.HumanoidRootPart.CFrame = char2.HumanoidRootPart.CFrame
                        end
                    end
                    local function getout(player,player2)
                        local char1,char2=player.Character,player2.Character
                        if char1 and char2 then
                            char1:MoveTo(char2.Head.Position)
                        end
                    end
                end
                wait(.8)
                p1.CFrame = pos
            end
        end

    end
end)

tab3:Textbox("Target [Short / Full Username]",true, function(t)
if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
for i,v in pairs(game.Players:GetPlayers()) do 
if (string.sub(string.lower(v.Name),1,string.len(t))) == string.lower(t) then
            local bool = Instance.new("BoolValue",game.InsertService)
            bool.Name = "valor"
            if game.Players.LocalPlayer.Backpack:FindFirstChild("Push") then
                game.Players.LocalPlayer.Backpack.Push.Parent = game.Players.LocalPlayer.Character

            end
        end
    end
    if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local Character = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game.Players:GetPlayers()) do 
if (string.sub(string.lower(v.Name),1,string.len(t))) == string.lower(t) then
            while wait() do
                if game.InsertService:FindFirstChild("valor") then
                    Character.CFrame = game.Players:FindFirstChild(t).Character.HumanoidRootPart.CFrame
                    pcall(
                        function()
                            for i, v in pairs(game.Players:GetPlayers()) do
                                if v.Name == game.Players.LocalPlayer.Name then
                                else
                                    local args = {
                                        [1] = game:GetService("Players")[v.Name].Character
                                    }

                                    game:GetService("Players").LocalPlayer.Character.Push.PushTool:FireServer(unpack(args))
                                end
                            end
                        end
                    )
                end
            end
     end
        end
    end
end
end)

tab3:Button("Untarget Player", function()
    if game.InsertService:FindFirstChild("valor") then
        game.InsertService.valor:Remove()
        end 
end)


local tab4 = win:Tab("Teleport")

tab4:Textbox("TP to Player",true, function(t)
    if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local p1 = game.Players.LocalPlayer.Character.HumanoidRootPart

        for i,v in pairs(game.Players:GetPlayers()) do 
            if v.Name == t or v.DisplayName == t then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(v).Character.HumanoidRootPart.CFrame
            end
        end
        for i,v in pairs(game.Players:GetChildren()) do
            if (string.sub(string.lower(v.DisplayName),1,string.len(t))) == string.lower(t) then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(v.Name).Character.HumanoidRootPart.CFrame
            end
        end
        for i,v in pairs(game.Players:GetChildren()) do
            if (string.sub(string.lower(v.Name),1,string.len(t))) == string.lower(t) then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(v.Name).Character.HumanoidRootPart.CFrame
            end
        end
    end
    local p1 = game.Players.LocalPlayer.Character.HumanoidRootPart

    for i,v in pairs(game.Players:GetPlayers()) do 
        if v.Name == t or v.DisplayName == t then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(v).Character.HumanoidRootPart.CFrame
        end
    end
    for i,v in pairs(game.Players:GetChildren()) do
        if (string.sub(string.lower(v.DisplayName),1,string.len(t))) == string.lower(t) then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(v.Name).Character.HumanoidRootPart.CFrame
        end
    end 
    for i,v in pairs(game.Players:GetChildren()) do
        if (string.sub(string.lower(v.Name),1,string.len(t))) == string.lower(t) then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players:FindFirstChild(v.Name).Character.HumanoidRootPart.CFrame
        end
    end 
    if game.Players:FindFirstChild(t) then
            game.Players.LocalPlayer.HumanoidRootPart.CFrame = game.Players[t].Character.HumanoidRootPart
    end
end)
tab4:Button("Minefield", function()
    if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local player = game.Players.LocalPlayer
        player.Character.HumanoidRootPart.CFrame = CFrame.new(-56.9324, 22.79, -151.289)
    end
end)
tab4:Button("Balloon", function()
    if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local player = game.Players.LocalPlayer
        player.Character.HumanoidRootPart.CFrame = CFrame.new(-123.53, 23.1899, -112.254)
    end
end)
tab4:Button("Moving Stairs", function()
    if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local player = game.Players.LocalPlayer
        player.Character.HumanoidRootPart.CFrame = CFrame.new(-213.193, 86.789, -223.1)
    end
end)
tab4:Button("Normal Stairs", function()
    if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local player = game.Players.LocalPlayer
        player.Character.HumanoidRootPart.CFrame = CFrame.new(-3.38506, 202.789, -498.511)
    end
end)
tab4:Button("Spiral Stairs", function()
    if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local player = game.Players.LocalPlayer
        player.Character.HumanoidRootPart.CFrame = CFrame.new(110.235023, 829.001099, -345.815643, 0.129915163, 1.30630395e-08, 0.991525114, -1.84141857e-09, 1, -1.29334206e-08, -0.991525114, -1.45565379e-10, 0.129915163)
    end
end)
tab4:Button("Big Ass Building", function()
    if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local player = game.Players.LocalPlayer
        player.Character.HumanoidRootPart.CFrame = CFrame.new(140.96727,1032.95728,-192.707062,0.129915163,-6.89810093e-08,0.991525114,-5.13825036e-08,1,7.63030386e-08,-0.991525114,-6.08599677e-08,0.129915163)
    end 
end)

local tab5 = win:Tab("Misc")

tab5:Button("JobId: "..game.JobId, function()
lib:Notification("Information", "Share this to let other people using the Hub join your server!", "Ok!")
setclipboard(game.JobId)
end)

tab5:Textbox("JobId Teleport",true, function(t)
  queue_on_teleport('loadstring(game:HttpGet("https://pastebin.com/raw/wpCwpJZL"))()')
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,t, game.Players.LocalPlayer)
end)

tab5:Colorpicker("Change UI Color",Color3.fromRGB(255, 85, 0), function(t)
    lib:ChangePresetColor(Color3.fromRGB(t.R * 255, t.G * 255, t.B * 255))
end)

local tabX = win:Tab("LocalPlayer")

tabX:Slider("WalkSpeed",0,1000,16, function(t)
    if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = t 
    end 
end)

tabX:Slider("JumpPower",0,1000,50, function(t)
    if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = t 
    end 
end)

tabX:Slider("Gravity",0,1000,196, function(t)
    if game:FindFirstChild("Workspace") then
        game.Workspace.Gravity = t 
    end 
end)

tabX:Button("Invisible Character [Turn Invisible]", function()
    local function testar()
        local Character = game.Players.LocalPlayer.Character
        local old = Character.HumanoidRootPart.CFrame
        local cam = game.Workspace.Camera
        local timeRemaining = 6.4

        if game.Players.LocalPlayer.Character:FindFirstChild("LowerTorso") then
            cam.CameraType = Enum.CameraType.Scriptable
            Character.HumanoidRootPart.CFrame = CFrame.new(-4.91794682, 30.108923, -481.843384, 0.999506295, 0.00190703617, 0.0313607678, -7.76108422e-09, 0.99815625, -0.0606972426, -0.0314186998, 0.0606672801, 0.997663438)
            Character.Head.Transparency = 1 
            Character.Humanoid.JumpPower = 0    
            Character.UpperTorso.Transparency = 1 
            wait(1)
            Character.LowerTorso:Remove()
            Character.HumanoidRootPart.CFrame = old
            wait(.2)
            cam.CameraType = Enum.CameraType.Custom

            while timeRemaining > 0 do
                for i,v in pairs(Character:GetChildren()) do
                    if v.ClassName == "Accessory" then
                        v:Remove()
                    else 
                        if Character.Head:FindFirstChild("face") then
                            Character.Head.face:Remove()
                        else
                            if Character:FindFirstChild("RightUpperLeg") then
                                Character.RightUpperLeg:Remove()
                            else
                                if Character:FindFirstChild("RagdollMe") then
                                    Character.RagdollMe:Remove()
                                else
                                    if Character:FindFirstChild("LeftUpperArm") then
                                        Character.LeftUpperArm:Remove()
                                    else 
                                        if Character:FindFirstChild("RightUpperArm") then
                                            Character.RightUpperArm:Remove()
                                            if Character:FindFirstChild("LeftUpperLeg") then
                                                Character.LeftUpperLeg:Remove()
                                            else
                                                if Character:FindFirstChild("RightUpperLeg") then
                                                    Character.RightUpperLeg:Remove()
                                                else
                                                end
                                            end
                                        end
                                    end
                                end
                                wait()
                                timeRemaining = timeRemaining - 1   
                                wait()
                                Character.HumanoidRootPart.CanCollide = true
                                Character.HumanoidRootPart.CFrame = old
                            end
                        end
                    end
                end
            end
        end
    end

    if game.PlaceId == 9848789324 then
        testar()
    end
    if game.Players.LocalPlayer.Character:FindFirstChild("FirstPerson") then
        game.Players.LocalPlayer.Character.FirstPerson:Remove()
    end
end)

tabX:Button("Respawn Character", function()
    local plr = game.Players.LocalPlayer

    local function SeuRespawn(plr)
        if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
            local old = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            local plr = game.Players.LocalPlayer
            local char = plr.Character
            if char:FindFirstChildOfClass("Humanoid") then char:FindFirstChildOfClass("Humanoid"):ChangeState(15) end
            char:ClearAllChildren()
            local newChar = Instance.new("Model")
            newChar.Parent = workspace
            plr.Character = newChar
            plr.Character = char
            newChar:Destroy()
            wait(6.5)
            if plr.Character:FindFirstChild("HumanoidRootPart") then
                plr.Character.HumanoidRootPart.CFrame = old
                plr.Character.HumanoidRootPart.CFrame = old
            end
        end
        end
        end

    SeuRespawn(plr)
end)

tabX:Button("Rejoin Server", function()
lib:Notification("Information", "If you are on a server alone, only you will join a new server", "Understood")
queue_on_teleport('loadstring(game:HttpGet("https://pastebin.com/raw/wpCwpJZL"))()')
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,game.JobId,game.Players.LocalPlayer)
end)

local tab6 = win:Tab("Credits")

tab6:Label("Credits [Click their names to copy their discord]")

tab6:Button("16kx_Mc   (! rvenge#1970)", function()
    lib:Notification("16kx_Mc", "Scripting, UI design, real idea", "Cool!")
    setclipboard("! rvnge#1970")
end)