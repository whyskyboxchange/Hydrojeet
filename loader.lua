-- Thank you for using Hydrojeet!
-- Join our Discord to receive updates if this script stops working:
-- https://discord.gg/BXAQPNudbU

pcall(function()
    local success, source = pcall(function()
        return game:HttpGet("https://raw.githubusercontent.com/whyskyboxchange/Hydrojeet/refs/heads/main/main.lua", true)
    end)

    if success and type(source) == "string" then
        pcall(writefile, "hydrojeet.lua", source)
    else
        source = readfile("hydrojeet.lua")
    end

    loadstring(source)()
end)
