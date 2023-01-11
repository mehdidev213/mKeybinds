ESX = nil Citizen.CreateThread(function() while ESX == nil do TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)  Citizen.Wait(0) end end)

local open = false


function openMenuKeybinds()

    if open then
        open = false
        RageUI.Visible(main, false)
    else
        main = RageUI.CreateMenu("Touches", "Touche du serveur")
        main:SetRectangleBanner(57, 102, 57, 255)
        main.Closed = function()
            open = false
        end
        RageUI.Visible(main, true) 
        open = true
        Citizen.CreateThread(function()
            while open do
                Wait(0)
                RageUI.IsVisible(main, function()
                    for k,v in pairs(Config.Bind) do
                        RageUI.Button(("%s"):format(v.Name), ("%s"):format(v.Desc), {RightLabel = ("→ %s"):format(v.Bind), LeftBadge = RageUI.BadgeStyle.Star}, true, {
                            onSelected = function()
                            end
                        }, main)
                    end
                end) 
            end
        end)
    end
end

if Config.AllowCommand then
    RegisterCommand(Config.CommandName, function()
        openMenuKeybinds()
    end)
end

if Config.AllowKey then
    Keys.Register(Config.KeyName, "F3", "Ouvrir le menu des touches", function()
        if IsEntityDead(PlayerPedId()) then return end
        openMenuKeybinds()
    end)
end
