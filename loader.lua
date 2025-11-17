local Loader = loadstring(game:HttpGet("https://pastebin.com/raw/aEJjCD0M"))()
local Saveed = loadstring(game:HttpGet("https://raw.githubusercontent.com/x0GiGz/Workspace/main/Gui/fluent%20save%20config.lua"))()
local Setting = loadstring(game:HttpGet("https://raw.githubusercontent.com/x0GiGz/Workspace/main/Gui/fluent%20interfaces.lua"))()
local SetFile = loadstring(game:HttpGet("https://raw.githubusercontent.com/4byZ-0/Folder/refs/heads/main/AAA"))()
local Options = Loader.Options
local Windows = Loader:CreateWindow(
    {
        Title = "Makoto Hub",
        SubTitle = "Anime World Tower Defense",
        TabWidth = 130,
        Size = UDim2.fromOffset(540, 440),
        Theme = "Aqua",
        Acrylic = true,
        UpdateDate = "19/4/2024 - 2.0",
        UpdateLog = "Thy AWTD leaderboards shall fall",
        IconVisual = nil,
        BlackScreen = false,
        MinimizeKey = Enum.KeyCode.LeftAlt
    }
)
local click = loadstring(game:HttpGet("https://raw.githubusercontent.com/buang5516/buanghub/main/realclick-obf.lua"))()
local Tabs_Main =
{
    [1] = Windows:AddTab({Title = "Auto Join", Name = nil, Icon = "layers"}),
    [2] = Windows:AddTab({Title = "Macro", Name = nil, Icon = "video"}),
    [3] = Windows:AddTab({Title = "Game", Name = nil, Icon = "gamepad"}),
    [4] = Windows:AddTab({Title = "Gacha", Name = nil, Icon = "egg"}),
    [5] = Windows:AddTab({Title = "Misc", Name = nil, Icon = "menu"}),
    [6] = Windows:AddTab({Title = "Webhook", Name = nil, Icon = "network"}),
    [7] = Windows:AddTab({Title = "Import / Export", Name = nil, Icon = "globe"}),
    [8] = Windows:AddTab({Title = "v2", Name = nil, Icon = "clover"}),
    [9] = Windows:AddTab({Title = "Settings", Name = nil, Icon = "indian-rupee"}),
}

local Tabs_Secs =
{
    [1] = {Tabs_Main[1]:AddSection("Auto Join")},
    [2] = {Tabs_Main[2]:AddSection("Macro")},
    [3] = {Tabs_Main[3]:AddSection("Game")},
    [4] = {Tabs_Main[4]:AddSection("Gacha")},
    [5] = {Tabs_Main[4]:AddSection("Exchange")},
    [6] = {Tabs_Main[5]:AddSection("Misc")},
    [7] = {Tabs_Main[6]:AddSection("Webhook")},
    [8] = {Tabs_Main[7]:AddSection("Import / Export")},
    [9] = {Tabs_Main[8]:AddSection("v2")},
}


local Buttons =
{
    Create = nil,
    Delete = nil,
    Example = nil,
}



do
    SetFile:CheckFolder("Makoto Hub")
    SetFile:CheckFolder("Makoto Hub/AWTD")
    Saveed:SetIgnoreIndexes({"Record Macro"})
    SetFile:CheckFolder("Makoto Hub/AWTD/Macro")
    SetFile:CheckFile("Makoto Hub/AWTD/Macro/Starter.json", {})
end
local Units = {}
local Banners = {}
local player = game:GetService("Players").LocalPlayer
local HttpService = game:GetService("HttpService")
local HttpRequest = http_request
local Webhook1 = "https://discord.com/api/webhooks/1319684463013396480/yj4frK8FRhaUU9Ql5PN7M1bXcyIDswWCyZGmogFZ82ymE1aO332UcuKF0m_BheOkAEMq"
if game.PlaceId == 6558526079 then
    for _, BannersName in ipairs(game:GetService("ReplicatedStorage").Modules.System.RateDrop:GetChildren()) do
            local BannerA = BannersName.Name:gsub("_RateDrop", "")
            table.insert(Banners, BannerA)
            print(BannerA)
        
    end
end
Tabs_Secs[1][1]:AddToggle(
    "Auto Quick Start",
    {
        Title = "Auto Start",
        Default = false,
        Callback = function(Value)
        end
    }
)

Tabs_Secs[1][1]:AddDropdown("Select Difficulty", {
    Title = "Select Difficulty",
    Values = {"Normal", "Insane", "Nightmare", "Challenger"},
    Multi = false,
    Default = 1,
})
Tabs_Secs[1][1]:AddToggle(
    "Auto Raid",
    {
        Title = "Auto Raid",
        Default = false,
        Callback = function(Value)
        end
    }
)
Tabs_Secs[1][1]:AddDropdown("Select Raid", {
    Title = "Select Raid",
    Values = {"Charuto Bridge", "Exploding Planet", "MarineFord Raid", "Hero City Raid", "Katamura City Raid", "Spider MT. Raid", "Pillar Cave" , "Katana Revenge", "Soul Hall", "Tomb of the Star", "String Kingdom", "Esper City", "Execution Base"},
    Multi = false,
    Default = 1,
})
Tabs_Secs[1][1]:AddToggle(
    "Auto Legend Stage",
    {
        Title = "Auto Legend Stage",
        Default = false,
        Callback = function(Value)
        end
    }
)
Tabs_Secs[1][1]:AddDropdown("Select Legend Stage", {
    Title = "Select Legend Stage",
    Values = {"Paradox Invasion", "Victory Valley", "Dream Island", "Ruin Society", "Chaos Return", "Shadow Realm", "Idol Concert", "Evil Pink Dungeon", "Z Game", "Android Future"},
    Multi = false,
    Default = 1,    
})
Tabs_Secs[1][1]:AddToggle(
    "Auto Endless",
    {
        Title = "Auto Endless",
        Default = false,
        Callback = function(Value)
        end
    }
)
Tabs_Secs[1][1]:AddDropdown("Select Endless", {
    Title = "Select Endless",
    Values = {"Endless Spider Forest", "Endless Snow Hill", "Random Enemy", "Darkness Tower"},
    Multi = false,
    Default = 1,
})
Tabs_Secs[1][1]:AddToggle(
    "Auto Event",
    {
        Title = "Auto Event",
        Default = false,
        Callback = function(Value)
        end
    }
)
Tabs_Secs[1][1]:AddDropdown("Select Event", {
    Title = "Select Event",
    Values = {"Red Element", "Blue Element", "Green Element", "Purple Element", "Yellow Element", "Metal Rush", "Boss Rush", "Random Unit"},
    Multi = false,
    Default = 1,
})
Tabs_Secs[1][1]:AddToggle(
    "Auto Secret Dimension",
    {
        Title = "Auto Secret Dimension",
        Default = false,
        Callback = function(Value)
        end
    }
)
Tabs_Secs[1][1]:AddDropdown("Select Dimension", {
    Title = "Select Secret Dimension",
    Values = {"The Fascinating Horizon", "The Fascinating Horizon EX", "Shadow Realm[Destroyed]", "Shadow Realm[Destroyed] EX", "Shinjuku Showdown", "Sukuna Showdown", "Shadow Realm II"},
    Multi = false,
    Default = 1,
})



Tabs_Secs[2][1]:AddToggle(
    "Record Macro",
    {
        Title = "Record Macro",
        Default = false,
        Callback = function(Value)
        end
    }
)
local Paragraph = Tabs_Secs[2][1]:AddParagraph({
    Title = "Warning",
    Content = "To ensure macro works correctly please start recording when you have changed the speed to x2/x3 (if you have VIP)"
})


local MacroSteps = Tabs_Secs[2][1]:AddParagraph({
    Title = ".",
    Content = "."
})
-- Actualizar contenido
MacroSteps:SetContent("Macro Steps \n: \n Method: \n Unit:\n Cash")


Tabs_Secs[2][1]:AddToggle(
    "Play Macro Hybrid Mode",
    {
        Title = "Play Macro Hybrid",
        Default = false,
        Callback = function(Value)
            if Options["Record Macro"] and Value then
            elseif Options["Record Macro"] and not Value then
            end
            if Value then
            Loader:Notify(
                {
                    Title = "Macro is playing",
                    Disable = true,
                    Duration = 5
                }
            )
            else
                Loader:Notify(
                    {
                        Title = "Macro stopped playing",
                        Disable = true,
                        Duration = 5
                    }
                )
            end
        end
    }
)

Tabs_Secs[2][1]:AddDropdown(
    "Selected File [Main]",
    {
        Title = "Selected File",
        Values = SetFile:ListFile("Makoto Hub/AWTD/Macro","json"),
        Multi = false,
        Default = "Starter",
        Callback = function(Value)
            if Buttons.Delete and (Value == "" or Value == nil) then

            elseif Buttons.Delete and Value ~= "" and Value ~= nil then
            end
        end
    }
)


Tabs_Secs[2][1]:AddInput(
    "File Name [Main]",
    {
        Title = "Create File",
        Placeholder = "Name.",
        Numeric = false,
        Finished = false,
        Default = "",
        Callback = function(Value)
            if Buttons.Create and (Value == "" or Value == nil) then

            elseif Buttons.Create and Value ~= "" and Value ~= nil then

            end
        end
    }
)


Buttons.Create = Tabs_Secs[2][1]:AddButton(
    {
        Title = "Create",
        Callback = function()
            local succs, error = pcall(
                function()
                    local text = string.format("Makoto Hub/AWTD/Macro/".."%s.json", Options["File Name [Main]"].Value)
                    if not isfile then
                        error("The excutor does not support isfile", 9)
                    elseif not writefile then
                        error("The excutor does not support writefile", 9)
                    elseif isfile(text) then
                        error("This file is already available", 9)
                    else
                        SetFile:CheckFile(text, {})
                        Options["Selected File [Main]"]:SetValues(SetFile:ListFile("Makoto Hub/AWTD/Macro","json"))
                        Options["Selected File [Main]"]:SetValue(Options["File Name [Main]"].Value)
                    end
                end
            )
            if succs then
                Loader:Notify(
                    {
                        Title = "Successful Create: " .. tostring(Options["File Name [Main]"].Value),
                        Disable = true,
                        Duration = 5
                    }
                )
            elseif error then
                Loader:Notify(
                    {
                        Title = "Unsuccessful Create: " .. tostring(error),
                        Disable = true,
                        Duration = 5
                    }
                )
            end
        end
    }
)



Buttons.Delete = Tabs_Secs[2][1]:AddButton(
    {
        Title = "Delete",
        Callback = function()
            Windows:Dialog(
                {
                    Title = "Delete",
                    Content = "Are you sure you want to delete "..tostring(Options["Selected File [Main]"].Value).."?",
                    Buttons = {
                        {
                            Title = "Yes",
                            Callback = function()
                                local names = Options["Selected File [Main]"].Value
                                local succs, error = pcall(
                                    function()
                                        local text = string.format("Makoto Hub/AWTD/Macro/".."%s.json", names)
                                        if names == nil then
                                            error("The name of the selected file is empty", 9)
                                        elseif not isfile then
                                            error("The excutor does not support isfile", 9)
                                        elseif not delfile then
                                            error("The excutor does not support delfile", 9)
                                        elseif not isfile(text) then
                                            error("Unable to find the file", 9)
                                        else
                                            SetFile:DeleteFile(text)
                                            local list = SetFile:ListFile("Makoto Hub/AWTD/Macro","json")
                                            Options["Selected File [Main]"]:SetValues(list)
                                            Options["Selected File [Main]"]:SetValue(#list > 0 and list[#list] or nil)
                                        end
                                    end
                                )
                                if succs then
                                    Loader:Notify(
                                        {
                                            Title = "Successful Delete: " .. tostring(names),
                                            Disable = true,
                                            Duration = 5
                                        }
                                    )
                                elseif error then
                                    Loader:Notify(
                                        {
                                            Title = "Unsuccessful Delete: " .. tostring(error),
                                            Disable = true,
                                            Duration = 5
                                        }
                                    )
                                end
                            end
                        },
                        {
                            Title = "No"
                        }
                    }
                }
            )
        end
    }
)
Buttons.Example = Tabs_Secs[3][1]:AddButton({
        Title = "Button",
        Description = "Very important button",
        Callback = function()
            Windows:Dialog({
                Title = "Title",
                Content = "This is a dialog",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            print("Confirmed the dialog.")
                            if MacroSteps then
                            

                            else
                                print("El objeto no tiene un TextLabel o es nil.")
                            end

                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                            if MacroSteps then
                                local updatedContent = "Updated Content Here"

                                Paragraph.Update(MacroSteps, "Macro Steps", updatedContent)

                            else
                                print("El objeto no tiene un TextLabel o es nil.")
                            end
                            
                            

                        end
                    }
                }
            })
        end
    }
)

Tabs_Secs[3][1]:AddToggle(
    "Auto Start",
    {
        Title = "Auto Start",
        Default = false
    }
)

Tabs_Secs[3][1]:AddToggle(
    "Auto Replay",
    {
        Title = "Auto Replay",
        Default = false
    }
)

Tabs_Secs[3][1]:AddToggle(
    "Auto Pick Buff",
    {
        Title = "Auto Pick Buff",
        Default = false
    }
)
Tabs_Secs[3][1]:AddDropdown("Auto Pick", {
    Title = "Auto Pick Buff Type",
    Values = {"ATK", "ElementPower", "RNG", "Tamer"},
    Multi = false,
    Default = 1,
})


Tabs_Secs[4][1]:AddDropdown("Select Banner", {
    Title = "Select Banner",
    Values = Banners,
    Multi = false,
    Default = 1,
})


Tabs_Secs[4][1]:AddButton({
    Title = "x1 Summon",
    Description = "Select the banner to summon 1 time in it",
    Callback = function()
        game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("Gacha"):InvokeServer(1, Options["Select Banner"].Value)
        
    end
})
Tabs_Secs[4][1]:AddButton({
    Title = "x10 Summon",
    Description = "Select the banner to summon 10 times in it",
    Callback = function()
        game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("Gacha"):InvokeServer(10, Options["Select Banner"].Value)
        
    end
})
Tabs_Secs[5][1]:AddDropdown("Select Shadow Exchange", {
    Title = "Select Shadow Exchange",
    Values = {"Shadow Master Key", "RandomShadowUnit", "RandomShadowSkin"},
    Multi = false,
    Default = 1,
})
Tabs_Secs[5][1]:AddButton({
    Title = "Shadow Exchange",
    Description = "Select the type of exchange",
    Callback = function()
        game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("BuyItem"):InvokeServer(Options["Select Shadow Exchange"].Value, "CIDTrader")
    end
})
Tabs_Secs[5][1]:AddDropdown("Select Summer Exchange", {
    Title = "Select Summer Exchange",
    Values = {"Summer10Gacha", "SummerGacha"},
    Multi = false,
    Default = 1,
})
Tabs_Secs[5][1]:AddButton({
    Title = "Summer Summon",
    Description = "Select the type of exchange",
    Callback = function()
        game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("BuyItem"):InvokeServer(Options["Select Summer Exchange"].Value, "Peem")
    end
})
Tabs_Secs[6][1]:AddToggle(
    "Anonymous Mode",
    {
        Title = "Anonymous Mode",
        Default = false
    }
)
Tabs_Secs[6][1]:AddToggle(
    "Auto Trait Reroll",
    {
        Title = "Auto Trait Reroll",
        Default = false
    }
)
Tabs_Secs[6][1]:AddInput("WebhookTrait", {
    Title = "Webhook To Send",
    Default = "1",
    Placeholder = "1",
    Numeric = false,
    Finished = true,
    Callback = function(Value)
    end
})
Tabs_Secs[6][1]:AddInput("IDTrait", {
    Title = "User ID To Send",
    Default = "1",
    Placeholder = "1",
    Numeric = false,
    Finished = true,
    Callback = function(Value)
    end
})
Tabs_Secs[6][1]:AddDropdown("TraitToRoll", {
    Title = "Trait To Reroll",
    Values = {"Arcanist", "Berserk", "Bounty Hunt", "Dark Summoner", "Deadeye", "Divine Treasure", "Elementalist", "Entrepeneur", "Giant Slayer", "Golden", "Momentum", "Precision", "Strength", "Survivor", "Switftness", "The Fallen One", "The Honored One"},
    Multi = false,
    Default = 1,
})

Tabs_Secs[6][1]:AddToggle(
    "Auto Sephira",
    {
        Title = "Auto Sephira",
        Default = false
    }
)
Tabs_Secs[6][1]:AddButton({
    Title = "Get all makoto quests",
    Description = "Get all makoto quests instead of waiting for velvet room to spawn",
    Callback = function()
        game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("GetSideQuest"):FireServer("Execution Quest I")
        game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("GetSideQuest"):FireServer("Execution Quest II")
        game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("GetSideQuest"):FireServer("Execution Quest III")
    end
})
Tabs_Secs[6][1]:AddButton({
    Title = "Redeem all codes",
    Description = "Gets all the codes from https://beebom.com/roblox-anime-world-tower-defense-codes/ to redeem them",
    Callback = function()
        local HttpService = game:GetService("HttpService")

        local function getPageContent(url)
            local response
            local success, err = pcall(function()
                response = http_request({
                    Url = url,
                    Method = "GET",
                    Headers = {
                        ["User-Agent"] = "Roblox/HttpRequest"
                    }
                })
            end)

            if success and response.StatusCode == 200 then
                return response.Body
            end
        end

        local function extractCodesFromHTML(html)
            local codes = {}

            for code in string.gmatch(html, '<strong>([%w%d]+)</strong>') do
                if not string.find(code, "NEW") then
                    table.insert(codes, code)
                end
            end

            return codes
        end

        local function redeemCodes(codes)
            for _, code in ipairs(codes) do
                game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("RedeemCode"):InvokeServer(code)
                wait(0.5)
                Loader:Notify(
                    {
                        Title = "Redeeming code "..code,
                        Disable = true,
                        Duration = 5
                    }
                )
            end
        end
        local url = "https://beebom.com/roblox-anime-world-tower-defense-codes/"
        local htmlContent = getPageContent(url)
        if htmlContent then
            local codes = extractCodesFromHTML(htmlContent)
            redeemCodes(codes)
        end
        Loader:Notify(
            {
                Title = "Codes redeemed!",
                Disable = true,
                Duration = 5
            }
        )
        
    end
})
Tabs_Secs[6][1]:AddToggle(
    "FPS Booster",
    {
        Title = "FPS Booster",
        Default = false
    }
)
Tabs_Secs[7][1]:AddInput("Webhook Input", {
    Title = "Webhook URL Input",
    Default = "1",
    Placeholder = "1",
    Numeric = false,
    Finished = true,
    Callback = function(Value)
    end
})
Tabs_Secs[7][1]:AddToggle(
    "Send Webhook",
    {
        Title = "Webhook after game finished",
        Default = false
    })

    Tabs_Secs[8][1]:AddInput("Export File Name", {
        Title = "Export Macro Name",
        Description = "Input Description",
        Default = "Default",
        Placeholder = "Placeholder",
        Numeric = false, -- Only allows numbers
        Finished = false, -- Only calls callback when you press enter
        Callback = function(Value)
            print("Input changed:", Value)
        end
    })
    Tabs_Secs[8][1]:AddDropdown(
    "Export File",
    {
        Title = "Selected Macro To Export",
        Values = SetFile:ListFile("Makoto Hub/AWTD/Macro","json"),
        Multi = false,
        Default = "Starter",
        Callback = function(Value)
            if Buttons.Delete and (Value == "" or Value == nil) then
                Buttons.Delete:Lock()
            elseif Buttons.Delete and Value ~= "" and Value ~= nil then
                Buttons.Delete:UnLock()
            end
        end
    }
)
    Tabs_Secs[8][1]:AddButton({
        Title = "Export Macro",
        Description = "Convert the macro file into a discord link",
        Callback = function()
            Windows:Dialog({
                Title = "Confirm",
                Content = "Do you want to convert it?",
                Buttons = {
                    {
                        Title = "Confirm",
                        Callback = function()
                            local function ExportMacro(webhookUrl, filePath, fileName)
                                -- Leer el contenido del archivo
                                local fileContent = readfile("Makoto Hub/AWTD/Macro/"..filePath..".json")
                                if not fileContent then
                                    error("Error al leer el archivo: " .. filePath)
                                end
                            
                                -- Preparar datos para el webhook
                                local boundary = "----LuaBoundary"
                                local body = "--" .. boundary .. "\r\n"
                                    .. 'Content-Disposition: form-data; name="file"; filename="' .. fileName .. '"\r\n'
                                    .. "Content-Type: application/json\r\n\r\n"
                                    .. fileContent .. "\r\n"
                                    .. "--" .. boundary .. "--\r\n"
                            
                                local headers = {
                                    ["content-type"] = "multipart/form-data; boundary=" .. boundary,
                                    ["content-length"] = tostring(#body),
                                }
                            
                                -- Enviar solicitud HTTP
                                local success, response = pcall(function()
                                    return HttpRequest({
                                        Url = webhookUrl,
                                        Method = "POST",
                                        Headers = headers,
                                        Body = body,
                                    })
                                end)
                            
                                if not success then
                                    error("Error al enviar la solicitud HTTP: " .. tostring(response))
                                end
                            
                                -- Procesar la respuesta del servidor
                                local jsonResponse = HttpService:JSONDecode(response.Body)
                                if jsonResponse and jsonResponse.attachments and #jsonResponse.attachments > 0 then
                                    return jsonResponse.attachments[1].url
                                else
                                    error("Error al subir el archivo: Respuesta inesperada del servidor")
                                end
                            end
                            
                            
                            -- Llamar a la función para enviar el archivo y obtener el enlace
                            local fileUrl = ExportMacro(Webhook1, Options["Export File"].Value, Options["Export File Name"].Value..".json")
                            print(fileUrl)
                            setclipboard(fileUrl)                                
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })
    Tabs_Secs[8][1]:AddInput("Import Macro Name", {
        Title = "Import Macro Name",
        Description = "Select name of the macro",
        Default = "Default",
        Placeholder = "Placeholder",
        Numeric = false, -- Only allows numbers
        Finished = false, -- Only calls callback when you press enter
        Callback = function(Value)
            print("Input changed:", Value)
        end
    })
    Tabs_Secs[8][1]:AddInput("Import Macro URL", {
        Title = "Import Macro Link",
        Description = "Put here the discord link of the macro in order to import it",
        Default = "Default",
        Placeholder = "Placeholder",
        Numeric = false, -- Only allows numbers
        Finished = false, -- Only calls callback when you press enter
        Callback = function(Value)
            print("Input changed:", Value)
        end
    })
    Tabs_Secs[8][1]:AddButton({
        Title = "Import Macro",
        Description = "Import a macro using a discord file link",
        Callback = function()
            local HttpRequest = http_request  -- Usar el método http_request en lugar de HttpService
    
            local fileUrl = Options["Import Macro URL"].Value
    
            -- Función para obtener el contenido del archivo
            local function getFileContent(url)
                local response = HttpRequest({
                    Url = url,
                    Method = "GET",
                    Headers = {
                        ["User-Agent"] = "Mozilla/5.0" 
                    }
                })
                
                if response.StatusCode == 200 then
                    local fileContent = response.Body 
                    if type(fileContent) == "string" then
                        -- Guardamos el contenido directamente sin usar JSONEncode
                        writefile("Makoto Hub/AWTD/Macro/"..Options["Import Macro Name"].Value..".json", fileContent)
                    else
                        warn("El archivo descargado no es una cadena válida de texto")
                    end
                else
                    warn("Hubo un error al obtener el contenido del archivo. Código de estado: " .. response.StatusCode)
                end
            end
    
            getFileContent(fileUrl)
        end
    })

Tabs_Secs[9][1]:AddToggle(
    "Kira Insta Kill",
    {
        Title = "Kira Insta Kill",
        Default = false,
        Callback = function(Value)
        end
    }
)
do
    if Options["File Name [Main]"].Value == "" or Options["File Name [Main]"].Value == nil then

    end
    if Options["Selected File [Main]"].Value == "" or Options["Selected File [Main]"].Value == nil then

    end

    Setting:SetLibrary(Loader)
    Setting:SetFolder("Makoto Hub/AWTD/"..game:GetService("Players"):GetUserIdFromNameAsync(game:GetService("Players").LocalPlayer.Name))
    Setting:BuildInterfaceSection(Tabs_Main[#Tabs_Main])

    Saveed:SetLibrary(Loader)
    Saveed:SetFolder("Makoto Hub/AWTD/"..game:GetService("Players"):GetUserIdFromNameAsync(game:GetService("Players").LocalPlayer.Name))
    Saveed:IgnoreThemeSettings()
    Saveed:BuildConfigSection(Tabs_Main[#Tabs_Main])

    Windows:SelectTab(1)
    Windows:Minimize("Loaded")
    MacroSteps:SetContent("Macro Steps \nWave: \n Method: \n Unit:\n Cash:\n Time:")
end

local r = game:GetService("VirtualInputManager")
local rootPart = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")

function autosephira()
    while wait(1) do
        for _, TimeSephiraSpawns in pairs(workspace.TimeSeraphSpawn:GetChildren()) do
            if TimeSephiraSpawns then
                game:GetService("Players").LocalPlayer.PlayerGui.Inventory.Enabled = false
                rootPart.CFrame = CFrame.new(TimeSephiraSpawns.CFrame.Position)
                task.wait(1)
                r:SendKeyEvent(true, Enum.KeyCode.E, false, game)
                wait(3)
                r:SendKeyEvent(false, Enum.KeyCode.E, false, game)
                task.wait(1)
            end
        end 
        if game:GetService("Players").LocalPlayer.PlayerGui.Inventory.UI.Inventory.Materials["Time Sephira"].Count.Text == "1" then
            break
        end
    end        
end

local function NavigationGUISelect(Object)
    local GuiService = game:GetService("GuiService")
    repeat
        GuiService.GuiNavigationEnabled = true
        GuiService.SelectedObject = Object
        wait()
    until GuiService.SelectedObject == Object
    game:GetService("VirtualInputManager"):SendKeyEvent(true, "Return", false, nil)
    game:GetService("VirtualInputManager"):SendKeyEvent(false, "Return", false, nil)
    task.wait(0.4)
    GuiService.GuiNavigationEnabled = false
    GuiService.SelectedObject = nil
end
local function StringToCFrame(cframeString)
    if not cframeString or type(cframeString) ~= "string" then
        warn("Invalid CFrame string:", cframeString)
        return nil
    end

    local success, result = pcall(function()
        -- Extraemos solo los tres primeros valores (X, Y, Z) de la cadena
        local x, y, z = cframeString:match("([%-?%d%.]+),%s*([%-?%d%.]+),%s*([%-?%d%.]+)")  -- Capturamos X, Y, Z
        if x and y and z then
            -- Convertimos esos valores a números y los usamos para crear el CFrame
            return Vector3.new(tonumber(x), tonumber(y), tonumber(z))
        else
            return nil
        end
    end)

    if success then
        return result
    else
        warn("Failed to parse CFrame string:", cframeString)
        return nil
    end
end

local function webhook()
    local UnitsUsedInfo = {}
    local Webhook = Options["Webhook Input"].Value
    local NewItems = {}
    local Puzzles =  player.Data.Puzzles.Value
    local Gold =  player.Data.Gold.Value
    for attributeName, attributeValue in pairs(game:GetService("Players").LocalPlayer.Data.Party:GetAttributes()) do
        table.insert(UnitsUsedInfo, attributeValue)
    end
        local ownedMaterialsString = game:GetService("Players").LocalPlayer.Data.OwnedMaterials.Value
        local itemsWithCount = {}
        local function parseOwnedItems(str)
            local result = {}
            for item, count in str:gmatch('["\']([^"\']+)["\']:([^,%}]+)') do
                count = count:match("%d+") and tonumber(count:match("%d+")) or nil
                result[item] = count
            end
            return result
        end
        local ownedMaterials = parseOwnedItems(ownedMaterialsString)
        
        for item, count in pairs(ownedMaterials) do
            if count > 0 then
                itemsWithCount[item] = count
        
            end
        end
        -- Función para imprimir tablas de forma legible
    for _, EarnFol in ipairs(game:GetService("Players").LocalPlayer.EarnFol:GetDescendants()) do
        if EarnFol:IsA("ValueBase") then
            if EarnFol.Value and EarnFol.Value >= 1 then
                -- Concatenar el valor y el nombre de EarnFol
                local itemString = string.format("+ %s\t%s\t\t", EarnFol.Value, EarnFol.Name)

                table.insert(NewItems, itemString)
            end
        end
    end
    


    



    local FBody = HttpService:JSONEncode({
        ["content"] = "",
        ["embeds"] = {
            {
                ["title"] = "Anime World Tower Defense",
                ["description"] = "Made By 4byZ",
                ["type"] = "rich",
                ["color"] = tonumber(0x175598),
                ['footer'] = {
                    ['text'] = string.format("Makoto Hub (%s)", os.date("%X")),
                },
                ["thumbnail"] = {
                    ["url"] = "https://cdn.discordapp.com/attachments/1246160608160911443/1319416564553879572/90c63b741b952d48d6f0a1c1f8bc256e.png"
                },
                ["fields"] = {
                    {
                        ["name"] = "User",
                        ["value"] = string.format("||%s||", player.Name),
                        ["inline"] = false
                    },
                    {
                        ["name"] = "Level",
                        ["value"] = "\n||" .. player.Data.Level.Value .. "||",
                        ["inline"] = false
                    },
                    {
                        ["name"] = "Currency",
                        ["value"] = string.format("<:Puzzles:1320043346617565214> %s\n<:GoldAWTD:1320043363705028659> %s", Puzzles, Gold),
                        ["inline"] = true
                    },
                    {
                        ["name"] = "Units Used",
                        ["value"] = table.concat(UnitsUsedInfo, "\n"),
                        ["inline"] = true
                    },
                    {
                        ["name"] = "Items obtained",
                        ["value"] = table.concat(NewItems, "\n"),
                        ["inline"] = true
                    },
                    {
                        ["name"] = "Result",
                        ["value"] = game:GetService("Players").LocalPlayer.PlayerGui.InterFace.Day.Text.."\n"..game:GetService("Players").LocalPlayer.PlayerGui.EndUI.UI.playtime.Text,
                        ["inline"] = false,
                    },
                }
            }
        }
    })

    local Headers = {["content-type"] = "application/json"}
    HttpRequest({Url = Webhook, Body = FBody, Method = "POST", Headers = Headers})
end
local function AutoTraitRR()

local function getOwnedUnitsTable()
    local ownedUnitsValue = game:GetService("Players").LocalPlayer.Data.OwnedUnits.Value
    
    local success, unitsTable = pcall(function()
        return game:GetService("HttpService"):JSONDecode(ownedUnitsValue)
    end)
    
    if success then
        return unitsTable
    else
        warn("Error al decodificar los datos: " .. tostring(unitsTable))
        return {}
    end
end

local function checkSelectedUnitTrait(traitToFind)
    local selectedUnitName = game:GetService("Players").LocalPlayer.PlayerGui.UnitSelect.Value
    if not selectedUnitName or selectedUnitName == "" then
        return false
    end
    local unitsTable = getOwnedUnitsTable()
    if not unitsTable[selectedUnitName] then
        return false
    end
    local unitData = unitsTable[selectedUnitName]
    if unitData and unitData.Traits then
        for _, trait in ipairs(unitData.Traits) do
            if trait == traitToFind then
                return true
            end
        end
    end
    
    return false
end

local function processUnits()
    if checkSelectedUnitTrait(Options["TraitToRoll"].Value) then
        print("Trait obtained")
        return
    end
    
    local unitsTable = getOwnedUnitsTable()
    for unitName, unitData in pairs(unitsTable) do
    end
end

processUnits()
    local httpService = game:GetService("HttpService")
    local HttpRequest = http_request
    local Headers = {["content-type"] = "application/json"}

    while task.wait(0.2) do
        game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("traitRemote"):InvokeServer("Random", game:GetService("Players").LocalPlayer.PlayerGui.UnitSelect.Value)
            local result = game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("traitRemote"):InvokeServer("Random", game:GetService("Players").LocalPlayer.PlayerGui.UnitSelect.Value)
                print(result[1])
                if typeof(result) == "table" and result[1] == Options["TraitToRoll"].Value then
                local FBody = httpService:JSONEncode({
            ["content"] = "<@"..Options["IDTrait"].Value..">".." Trait Obtained!",
            ["embeds"] = {
                {
                    ["title"] = "Makoto Hub v2 accelerator",
                    ["type"] = "rich",
                    ["color"] = tonumber(0xffffff),
                    ["thumbnail"] = {
                        ["url"] = "https://media.discordapp.net/attachments/1308174481793093735/1316079547195588678/image.png?ex=6764f2d7&is=6763a157&hm=9055fa0a5bf94ed25f5cd734f2cc45dc1f3e4b6c0c8fbbb5c73d138974cdd4a6&=&format=webp&quality=lossless&width=1250&height=676"
                    },
                    ["fields"] = {
                                        {
                            ["name"] = "Unit Rerolled",
                            ["value"] = game:GetService("Players").LocalPlayer.PlayerGui.UnitSelect.Value,
                            ["inline"] = true
                        },
                                                        {
                            ["name"] = "Trait Obtained",
                            ["value"] = Options["TraitToRoll"].Value,
                            ["inline"] = false
                        },
                        {
                            ["name"] = "Trait Rerolls Left",
                            ["value"] = result[2],
                            ["inline"] = true
                        }
                    }
                }
            }
    })
            HttpRequest({Url = Options["WebhookTrait"].Value, Body = FBody, Method = "POST", Headers = Headers})
            break
        end
    end
    game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
end
Options["Record Macro"]:OnChanged(function(v)
    if v and Options["Record Macro"].Value then
        local player = game:GetService("Players").LocalPlayer
        local lastActionTime = os.clock()
        local macroTime = 0
        local STEP = 0 -- Contador de acciones
        local cashSpent1 = game:GetService("Players").LocalPlayer.PlayerGui.InterFace.Equip.val.Cash_Value.val.Text
        local cashSpent2 = cashSpent1:gsub("%D", "")
        local cashSpent = tonumber(cashSpent2)
        local connections = {}
        local HttpService = game:GetService("HttpService")
        local macroFile = string.format("Makoto Hub/AWTD/Macro/%s.json", Options["Selected File [Main]"].Value)
        local Party = player:FindFirstChild("Data") and player.Data:FindFirstChild("Party")
                if Party then
                    local attributes = Party:GetAttributes()
                end
                local Unit1 = Party:GetAttribute("Equip1")
        local function updateMacroTime()
            lastActionTime = lastActionTime or os.clock()
            local currentTime = os.clock()

            macroTime = (currentTime - lastActionTime) * workspace.TimeSpeed.Value
        end
        local function saveConnectionsToJSON()
            if connections and next(connections) then

                local jsonData = HttpService:JSONEncode(connections)

                local success, errorMessage = pcall(function()
                    writefile(macroFile, jsonData)
                end)


            end
        end

        local function writemacro()
            writefile(macroFile, HttpService:JSONEncode(connections))
        end

        workspace.Units.ChildAdded:Connect(function(child)
            STEP = STEP + 1
            updateMacroTime() 
            local rawCashText = game:GetService("Players").LocalPlayer.PlayerGui.InterFace.Equip.val.Cash_Value.val.Text
            local numericCash = rawCashText:gsub("%D", "")
            local cashValue = tonumber(numericCash)
            cashSpent = cashValue 

            local info = child:WaitForChild("Info", 5)
            if info and Options["Record Macro"].Value then
                local owner = info:FindFirstChild("Owner")
                if owner and owner.Value == player.Name then
                    local unitName = child.Name
                    for i = 1, 6 do
                        local unitSlot = Party:GetAttribute("Equip"..i)
                        if unitSlot == unitName then
                            local cash = player.PlayerGui.InterFace.Equip.Grid["Slot_"..i].Cash.Text
                            if type(connections) == "table" then
                                table.insert(connections, {
                                    ["Unit"] = unitName,
                                    ["Step"] = STEP,
                                    ["CFrame"] = {
                                        ["X"] = child.WorldPivot.Position.X,
                                        ["Y"] = child.WorldPivot.Position.Y,
                                        ["Z"] = child.WorldPivot.Position.Z
                                    },
                                    ["Time"] = macroTime,
                                    ["Cash"] = tonumber(cash),
                                    ["Method"] = "SpawnUnit"
                                })
                                writemacro()
                            end
                        end
                    end
                end
            end
        end)

        workspace.Units.ChildAdded:Connect(function(child)
            local info = child:WaitForChild("Info", 5)
            if info and Options["Record Macro"].Value then
                local upgrade = info:FindFirstChild("Upgrade")
                if upgrade then
                    upgrade.Changed:Connect(function()
                        updateMacroTime()
                        local UpgradeCost = info:FindFirstChild("UpgradeCost")
                        STEP = STEP + 1
                        table.insert(connections, {
                            ["Unit"] = child.Name,
                            ["Step"] = STEP,
                            ["Upgrade"] = upgrade.Value,
                            ["CFrame"] = {
                                ["X"] = child.WorldPivot.Position.X,
                                ["Y"] = child.WorldPivot.Position.Y,
                                ["Z"] = child.WorldPivot.Position.Z
                            },
                            ["Time"] = macroTime,
                            ["Cash"] = tonumber(UpgradeCost.Value),
                            ["Method"] = "UpgradeUnit"
                        })
                        writemacro()
                    end)
                end
                local autoAbility = info:FindFirstChild("AutoAbility")
                if autoAbility then 
                    autoAbility.Changed:Connect(function()
                        updateMacroTime()
                        STEP = STEP + 1 
                        table.insert(connections, {
                            ["Unit"] = child.Name,
                            ["Step"] = STEP,
                            ["Value"] = autoAbility.Value,
                            ["Time"] = macroTime,
                            ["Method"] = "AutoAbility"
                        })
                        writemacro()
                    end)
                end
            end
        end)

        local Ability = game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("UnitAbility")
        Ability.OnClientEvent:Connect(function(...)
            print("fwehea")
            local args = {...}
            if #args >= 2 and Options["Record Macro"].Value then
                print("simga")
                local unit = args[1]
                local abilityName = args[2]
                -- Verificar si abilityName contiene "Placement"
                if abilityName ~= "SummonFX" and not string.find(abilityName, "Placement") then
                    local unitName = unit and typeof(unit) == "Instance" and unit.Name or tostring(unit)
        
                    local shouldExecute = true
                    for _, connection in ipairs(connections) do
                        if connection.Method == "AutoAbility" and connection.Unit == unitName then
                            shouldExecute = false
                            break
                        end
                    end
                    if shouldExecute then
                        STEP = STEP + 1
                        updateMacroTime()
        
                        table.insert(connections, {
                            ["Unit"] = unitName,
                            ["Method"] = "UnitAbility",
                            ["Step"] = STEP,
                            ["AbilityName"] = abilityName,
                            ["Time"] = macroTime
                        })
                        writemacro()
                    end
                end
            end
        end)
        
        

        workspace.Units.ChildAdded:Connect(function(child)
            local info = child:WaitForChild("Info", 5)
            

            if info and Options["Record Macro"].Value then
                local targetMode = info:FindFirstChild("TargetMode")
                if targetMode then
                    targetMode.Changed:Connect(function()

                        STEP = STEP + 1
                        table.insert(connections, {
                            ["Unit"] = child.Name,
                            ["Step"] = STEP,
                            ["Priority"] = targetMode.Value,
                            ["Time"] = macroTime,
                            ["Method"] = "ChangeUnitModeFunction"
                        })
                        writemacro()
                    end)
                end
            end
        end)

        local player = game:GetService("Players").LocalPlayer
        local playerGui = player.PlayerGui
        local buyButton = playerGui:WaitForChild("InterFace"):WaitForChild("BuyMeatMenu"):WaitForChild("Menu")
        local buy50 = buyButton:WaitForChild("Buy50")
        local buy10 = buyButton:WaitForChild("Buy10")
        local buy250 = buyButton:WaitForChild("Buy250")
        print(buy250)

        local FeedAll = playerGui:WaitForChild("InterFace"):WaitForChild("Equip"):WaitForChild("val"):WaitForChild("Feed All")
        buy50.MouseButton1Click:Connect(function()
            if Options["Record Macro"].Value then
                updateMacroTime()
                STEP = STEP + 1
                table.insert(connections, {
                ["Method"] = "BuyMeat",
                ["Quantity"] = "50",
                ["Step"] = STEP,
                ["Time"] = macroTime
            
            })
        writemacro()
    end
        end)
        buy250.MouseButton1Click:Connect(function()
            if Options["Record Macro"].Value then
                STEP = STEP + 1
                updateMacroTime()
                table.insert(connections, {
                    ["Method"] = "BuyMeat",
                    ["Quantity"] = "250",
                    ["Step"] = STEP,
                    ["Time"] = macroTime
                })
            end
        end)
        buy10.MouseButton1Click:Connect(function()
            if Options["Record Macro"].Value then
            STEP = STEP + 1
            updateMacroTime()
                table.insert(connections, {
                    ["Method"] = "BuyMeat",
                    ["Quantity"] = "10",
                    ["Step"] = STEP,
                    ["Time"] = macroTime
                    
                })
            writemacro()
            end
        end)
        FeedAll.Click.MouseButton1Click:Connect(function()
            if Options["Record Macro"].Value then
                updateMacroTime()
                    STEP = STEP + 1
                    table.insert(connections, {
                    ["Method"] = "FeedAll",
                    ["Step"] = STEP,
                    ["Time"] = macroTime
                    })
                    writemacro()
            end
        end)
        task.spawn(function()
            while true do
                -- Buscar el objeto SenkuInvention
                local SenkuInvention = workspace.Effect:FindFirstChild("SenkuInvention"..player.Name)
                
                -- Si se encuentra el objeto
                if SenkuInvention then
                    -- Conectar al evento ChildAdded si aún no está conectado
                    SenkuInvention.ChildAdded:Connect(function(senku)
                        if senku.Name ~= "kaseki" and Options["Record Macro"].Value then
                            updateMacroTime()
                            print("sigma")
                            STEP = STEP + 1
                            table.insert(connections, {
                                ["Method"] = "SenkuInvention",
                                ["Step"] = STEP,
                                ["Time"] = macroTime,
                                ["Type"] = senku.Name
                            })
                            writemacro()
                        end
                    end)
                    break
                end
                
                task.wait(0.5)
            end
        end)

            
            
        local mt = {
            __newindex = function(table, key, value)
                rawset(table, key, value)

                local jsonData = HttpService:JSONEncode(connections)
                
                writefile(string.format("Makoto Hub/AWTD/Macro/".."%s.json", Options["Selected File [Main]"].Value, HttpService:JSONEncode(connections)))
            end,
            __index = function(table, key)
                return rawget(table, key) 
            end
        }


        setmetatable(connections, mt)
        if not Options["Record Macro"].Value then
        end
    end
end)



Options["Play Macro Hybrid Mode"]:OnChanged(
    function(v)
        if v then
            local HttpService = game:GetService("HttpService")
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
            local workspace = game:GetService("Workspace")
            local startTime = os.clock()
            
            -- Define MacroSteps UI element (assuming it's a TextLabel or similar)
            local MacroSteps = getrenv()._G.MacroSteps or {
                SetContent = function(self, text)
                    print(text) -- Fallback to console output if MacroSteps isn't defined
                end
            }
            
            local function addSpacesToCamelCase(text)
                return text:gsub("(%l)(%u)", "%1 %2")
            end
            
            local function getCash()
                local player = game:GetService("Players").LocalPlayer
                if player and player.PlayerGui and player.PlayerGui:FindFirstChild("InterFace") then
                    local rawCashText = player.PlayerGui.InterFace.Equip.val.Cash_Value.val.Text
                    local numericCash = rawCashText:gsub("%D", "") 
                    return tonumber(numericCash) or 0
                end
                return 0
            end
            
            local function getMacroTime()
                local currentTime = os.clock()
                local elapsedTime = (currentTime - startTime) * workspace.TimeSpeed.Value
                return elapsedTime
            end
            
            local function playMacroFromFile()
                local spawnUnitRemote = ReplicatedStorage:WaitForChild("GenericModules"):WaitForChild("Service"):WaitForChild("Network"):WaitForChild("PlayerPlaceTower")
                local upgradeUnitRemote = ReplicatedStorage:WaitForChild("GenericModules"):WaitForChild("Service"):WaitForChild("Network"):WaitForChild("PlayerUpgradeTower")
                local changeModeRemote = ReplicatedStorage:WaitForChild("Remote"):WaitForChild("ChangeUnitModeFunction")
                local abilityRemote = ReplicatedStorage:WaitForChild("Modules"):WaitForChild("GlobalInit"):WaitForChild("RemoteEvents"):WaitForChild("PlayerActivateTowerAbility")
                local sellUnitRemote = ReplicatedStorage:WaitForChild("GenericModules"):WaitForChild("Service"):WaitForChild("Network"):WaitForChild("PlayerSellTower")
                local x2EventRemote = ReplicatedStorage:WaitForChild("Remote"):WaitForChild("x2Event")
                
                local filePath = string.format("Makoto Hub/AWTD/Macro/%s.json", Options["Selected File [Main]"].Value)
                print("File path resolved:", filePath)
                
                if not isfile(filePath) then
                    warn("File does not exist:", filePath)
                    return
                end
                
                local macroData
                local success, err = pcall(function()
                    local fileContents = readfile(filePath)
                    print("Raw file contents:", fileContents)
                    macroData = HttpService:JSONDecode(fileContents)
                end)
                
                if not success then
                    warn("Error loading macro data from file:", err)
                    return
                end
                
                if not macroData or type(macroData) ~= "table" then
                    warn("Invalid or empty macro data")
                    return
                end
                
                -- Reset start time before executing actions
                startTime = os.clock()
                
                for index, action in ipairs(macroData) do
                    local nextStep = macroData[index + 1] -- Get next step if it exists
                    local nextStepInfo = nextStep and ("\nNext Step: " .. (nextStep.Step or "Unknown") .. " (" .. (nextStep.Method or "Unknown") .. ")") or "Macro Finished"
                    
                    if action.Time then
                        print("Waiting for time to reach:", action.Time)
                        while getMacroTime() < action.Time do
                            local remainingTime = action.Time - getMacroTime()
                            
                            if action.Step then 
                                MacroSteps:SetContent(
                                    "Macro Steps\n" ..
                                    "Step: " .. action.Step .. "\n" ..
                                    "Method: " .. action.Method .. "\n" ..
                                    "Time Remaining: " .. string.format("%.2f", remainingTime) .. " seconds" .. 
                                    nextStepInfo
                                )
                            else 
                                MacroSteps:SetContent("Macro Finished")
                            end
                            
                            -- Wait a short time before updating again
                            task.wait(0.01)
                        end
                    end
                    
                    -- Process each action based on its method
                    if action.Method == "SpawnUnit" then
                        if action.Unit and action.CFrame then
                            pcall(function()
                                spawnUnitRemote:InvokeServer(action.Unit, CFrame.new(
                                    action.CFrame.X, 
                                    action.CFrame.Y, 
                                    action.CFrame.Z
                                ), 1, { "1", "1", "1", "1" })
                            end)
                        else
                            warn("SpawnUnit action is missing Unit or CFrame data")
                        end
                        
                    elseif action.Method == "UpgradeUnit" then
                        if action.Unit and action.CFrame then
                            local targetPosition = Vector3.new(action.CFrame.X, action.CFrame.Y, action.CFrame.Z) 
                            local closestUnit = nil
                            local closestDistance = math.huge
                            
                            for _, unit in ipairs(workspace.Units:GetChildren()) do
                                if unit:IsA("Model") and unit.Name == action.Unit and 
                                   unit:FindFirstChild("HumanoidRootPart") and 
                                   unit:FindFirstChild("Info") and 
                                   unit.Info:FindFirstChild("UpgradeCost") and 
                                   unit.Info.UpgradeCost.Value ~= "-1" then
                                    
                                    local distance = (unit.HumanoidRootPart.CFrame.Position - targetPosition).Magnitude
                                    if distance < closestDistance then
                                        closestDistance = distance
                                        closestUnit = unit
                                    end
                                end
                            end
                            
                            if closestUnit then
                                pcall(function()
                                    upgradeUnitRemote:InvokeServer(closestUnit)
                                end)
                            else
                                warn("Could not find unit to upgrade at position:", targetPosition)
                            end
                        else
                            warn("UpgradeUnit action is missing data")
                        end
                        
                    elseif action.Method == "AutoAbility" then
                        if action.Unit then
                            pcall(function()
                                local unit = workspace.Units:FindFirstChild(action.Unit)
                                if unit and unit:FindFirstChild("Info") and unit.Info:FindFirstChild("AutoAbility") then
                                    unit.Info.AutoAbility.Value = action.Value
                                end
                            end)
                        else
                            warn("AutoAbility action is missing unit data")
                        end
                        
                    elseif action.Method == "ChangeUnitModeFunction" then
                        if action.Unit then
                            pcall(function()
                                local unit = workspace.Units:FindFirstChild(action.Unit)
                                if unit then
                                    changeModeRemote:InvokeServer(unit)
                                end
                            end)
                        else
                            warn("ChangeUnitModeFunction action is missing data")
                        end
                        
                    elseif action.Method == "UnitAbility" then
                        if action.Unit and action.AbilityName then
                            pcall(function()
                                local unit = workspace.Units:FindFirstChild(action.Unit)
                                if unit then
                                    abilityRemote:FireServer(addSpacesToCamelCase(action.AbilityName), unit)
                                end
                            end)
                        else
                            warn("UnitAbility action is missing data")
                        end
                        
                    elseif action.Method == "SellUnit" then
                        if action.Unit then
                            pcall(function()
                                local unit = workspace.Units:FindFirstChild(action.Unit)
                                if unit then
                                    sellUnitRemote:InvokeServer(unit)
                                    if action.Step then
                                        MacroSteps:SetContent("Macro Steps \nStep: " .. action.Step .. 
                                                             "\nMethod: " .. action.Method .. 
                                                             "\nUnit: " .. action.Unit)
                                    end
                                end
                            end)
                        else
                            warn("SellUnit action is missing data")
                        end
                        
                    elseif action.Method == "BuyMeat" then
                        if action.Quantity then
                            pcall(function()
                                ReplicatedStorage:WaitForChild("Remote"):WaitForChild("BuyMeat"):InvokeServer(action.Quantity)
                                if action.Step then
                                    MacroSteps:SetContent("Macro Steps \nStep: " .. action.Step .. 
                                                         "\nMethod: " .. action.Method .. 
                                                         "\nQuantity: " .. action.Quantity)
                                end
                            end)
                        else
                            warn("BuyMeat action is missing data")
                        end
                        
                    elseif action.Method == "FeedAll" then
                        pcall(function()
                            ReplicatedStorage:WaitForChild("Remote"):WaitForChild("FeedAll"):InvokeServer()
                            if action.Step then
                                MacroSteps:SetContent("Macro Steps \nStep: " .. action.Step .. 
                                                     "\nMethod: " .. action.Method)
                            end
                        end)
                        
                    elseif action.Method == "SenkuInvention" then
                        if action.Type then
                            pcall(function()
                                local stoneDoctor = workspace.Units:FindFirstChild("Stone Doctor")
                                if stoneDoctor then
                                    abilityRemote:FireServer("BuySenkuInvation", stoneDoctor, action.Type)
                                end
                            end)
                        else
                            warn("SenkuInvention action is missing Type data")
                        end
                        
                    elseif action.Method == "x2Event" and x2EventRemote then
                        pcall(function()
                            x2EventRemote:InvokeServer()
                        end)
                        
                    else
                        warn("Unknown method:", action.Method)
                    end
                    
                    -- Short delay after each action to prevent throttling
                    task.wait(0.1)
                end
                
                MacroSteps:SetContent("Macro Execution Complete")
                print("Macro execution finished")
            end
            
            task.spawn(playMacroFromFile)
        end
    end
)



task.spawn(function()
    while true do
        wait() 
        if Loader.Unloaded then
            break
        end
        
        if Options["Auto Raid"].Value then
            print("sigma! sigma!")
            local args = {
                [1] = {
                    ["StageSelect"] = Options["Select Raid"].Value,
                    ["Image"] = "rbxassetid://9617217504",
                    ["FriendOnly"] = false,
                    ["Difficult"] = Options["Select Difficulty"].Value
                }
            }
            
            game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("CreateRoom"):FireServer(unpack(args))        
            task.wait(5)
            elseif Options["Auto Legend Stage"].Value then
                local args = {
                    [1] = {
                        ["StageSelect"] = Options["Select Legend Stage"].Value,
                        ["Image"] = "rbxassetid://9617217504",
                        ["FriendOnly"] = false,
                        ["Difficult"] = Options["Select Difficulty"].Value
                    }
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("CreateRoom"):FireServer(unpack(args))        
            task.wait(5)
            elseif Options["Auto Event"].Value then
                local args = {
                    [1] = {
                        ["StageSelect"] = Options["Select Event"].Value,
                        ["Image"] = "rbxassetid://9617217504",
                        ["FriendOnly"] = false,
                        ["Difficult"] = Options["Select Difficulty"].Value
                    }
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("CreateRoom"):FireServer(unpack(args))        
            task.wait(5)
            elseif Options["Auto Endless"].Value then
                local args = {
                    [1] = {
                        ["StageSelect"] = Options["Select Endless"].Value,
                        ["Image"] = "rbxassetid://9617217504",
                        ["FriendOnly"] = false,
                        ["Difficult"] = Options["Select Difficulty"].Value
                    }
                }
                
                game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("CreateRoom"):FireServer(unpack(args))        
                task.wait(5)
            
            elseif Options["Auto Secret Dimension"].Value then
                local args = {
                    [1] = {
                        ["StageSelect"] = Options["Select Dimension"].Value,
                        ["Image"] = "rbxassetid://9617217504",
                        ["FriendOnly"] = false,
                        ["Difficult"] = Options["Select Difficulty"].Value
                    }
                }
            
                
            game:GetService("ReplicatedStorage"):WaitForChild("Remote"):WaitForChild("CreateRoom"):FireServer(unpack(args))        
            task.wait(5)
            end

    end
end)


task.spawn(function()
    while true do
        wait() 
        if Loader.Unloaded then
            break
        end
        
        if Options["Auto Quick Start"].Value and game:GetService("Players").LocalPlayer.PlayerGui.InRoomUi.RoomUI.QuickStart.Visible == true then
            task.wait(1)
            NavigationGUISelect(game:GetService("Players").LocalPlayer.PlayerGui.InRoomUi.RoomUI.QuickStart.TextButton)
            task.wait(2)
        end
        task.wait(2)
    end
end)



task.spawn(function()
    while true do
        wait() 
        if Options["Auto Start"].Value and game:GetService("Players").LocalPlayer.PlayerGui.MainGui.MainFrames.StartMatch.Vote.TextLabel.Text == "Start Match" then
            task.wait(1)
            NavigationGUISelect(game:GetService("Players").LocalPlayer.PlayerGui.MainGui.MainFrames.StartMatch)
            task.wait(2)
        end
        task.wait(2)
    end
end)


task.spawn(function()
    while true do
        wait() 
        if Loader.Unloaded then
            break
        end
        
        if Options["Auto Pick Buff"] then
            task.wait(1)
            if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("BuffInterFace") then
                task.wait(1)
                NavigationGUISelect(game:GetService("Players").LocalPlayer.PlayerGui.BuffInterFace.BuffSelection.List[Options["Auto Pick"].Value].Pick)
                task.wait(2)
            end
        end
        task.wait(2)
    end
end)
task.spawn(function()
    while true do
        wait() 
        if Loader.Unloaded then
            break
        end
        
        if Options["Anonymous Mode"].Value then
            if workspace:FindFirstChild(player.Name) then
                workspace[player.Name].Head.PlayerTag.Info.PlayerName.Text = "Makoto Yuki"
                workspace[player.Name].Head.PlayerTag.Info.Rank_Level.Text = "https://discord.gg/sBz4gwxfSQ"        
            else
                workspace.Live[player.Name].Head.PlayerTag.Info.PlayerName.Text = "Makoto Yuki"
                workspace.Live[player.Name].Head.PlayerTag.Info.Rank_Level.Text = "https://discord.gg/sBz4gwxfSQ"      
            end
        end
        task.wait(2)
    end
end)
task.spawn(function()
    while true do
        wait() 
        if Loader.Unloaded then
            break
        end
        
        if Options["Auto Sephira"].Value then
            autosephira()
        end
        task.wait(2)
    end
end)
task.spawn(function()
    while true do
        wait() 
        if Loader.Unloaded then
            break
        end
        
        if Options["Auto Trait Reroll"].Value then
            AutoTraitRR()
        end
        task.wait(2)
    end
end)
task.spawn(function()
    while true do
        wait() 
        if Loader.Unloaded then
            break
        end
        
        if Options["FPS Booster"].Value then
            repeat wait() until game:IsLoaded()
            _G.whiteScreen = false
            _G.fps = 120
            _G.Mode = false
            loadstring(game:HttpGet('https://raw.githubusercontent.com/AloneBiNgu/AloneHub/main/lag'))()
        end
        task.wait(2)
    end
end)
local mt = getrawmetatable(game)
local originalNamecall = mt.__namecall
local hookActive = false

-- Función para activar el hook
local function activateKiraHook()
    if hookActive then return end
    
    setreadonly(mt, false)
    mt.__namecall = newcclosure(function(self, ...)
        local method = getnamecallmethod()
        local args = {...}

        if method == "FireServer" and tostring(self) == "UnitAbility" then
            if args[1] == "Kill" then
                args[1] = "Death Shot"
            end
            return originalNamecall(self, unpack(args))
        end

        return originalNamecall(self, ...)
    end)
    setreadonly(mt, true)
    hookActive = true
    print("Kira Insta Kill activado")
end

local function deactivateKiraHook()
    if not hookActive then return end
    
    setreadonly(mt, false)
    mt.__namecall = originalNamecall
    setreadonly(mt, true)
    hookActive = false
    print("Kira Insta Kill desactivado")
end
task.spawn(function()
    while true do
        wait(0.5) 
        
        if Loader.Unloaded then
            deactivateKiraHook()
            break
        end
        
        if Options["Kira Insta Kill"].Value then
            activateKiraHook()
        else
            deactivateKiraHook()
        end
    end
end)
task.spawn(function()
    while not Loader.Unloaded do
        task.wait(1) -- Esperar 1 segundo entre cada comprobación
        
        -- Intentar acceder a la interfaz de manera segura
        local success, replayButton = pcall(function()
            return game:GetService("Players").LocalPlayer.PlayerGui.EndUI.UI.Replay
        end)
        
        if success and replayButton and replayButton:IsA("GuiButton") then
            if Options["Auto Replay"].Value and workspace.Day.Value >= tonumber(workspace.Day:GetAttribute("Max")) then
                task.wait(1.5)
                
                -- Intentar hacer clic en el botón de replay
                pcall(function()
                    NavigationGUISelect(replayButton)
                    print("Replay button clicked successfully")
                end)
                task.wait(5)
                if workspace.Day.Value == 1 then
                    print("Replay successful! Day reset to 1")
                else
                    print("Replay may have failed. Current day:", workspace.Day.Value)
                end
            end
        end
        
        -- Código para el webhook
        local countdownSuccess, countdownText = pcall(function()
            return game:GetService("Players").LocalPlayer.PlayerGui.EndUI.UI.CountDown.Text
        end)
        
        if countdownSuccess and countdownText ~= "-" and Options["Send Webhook"].Value then
            webhook()
            task.wait(5)
        end
    end
end)
