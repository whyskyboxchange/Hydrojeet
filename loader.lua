-- Thank you for using Hydrojeet!
-- Join our Discord to receive updates if this script stops working:
-- https://discord.gg/BXAQPNudbU

pcall(function()
    local success, source = pcall(function()
        return game:HttpGet("https://raw.githubusercontent.com/whyskyboxchange/Hydrojeet/refs/heads/main/main.lua", true)
    end)

    local success2, source2 = pcall(function()
        return game:HttpGet("https://raw.githubusercontent.com/whyskyboxchange/Hydrojeet/refs/heads/main/watched.rbxm", true)
    end)

    if success and type(source) == "string" then
        -- Sigh...
        pcall(makefolder, "HYROXIDE"); task.wait(); pcall(makefolder, "HYDROXIDE/bin"); task.wait(); pcall(writefile, "HYDROXIDE/bin/watched.rbxm", source2)
        
        pcall(writefile, "hydrojeet.lua", source)
    else
        source = readfile("hydrojeet.lua")
    end

    task.wait()
    
    loadstring(source)()
end)
