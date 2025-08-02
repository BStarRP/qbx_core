local config = require 'config.server'

local function removeHungerAndThirst(src, player)
    local playerState = Player(src).state
    if not playerState.isLoggedIn then return end

    local hungerRate = config.player.hungerRate
    local thirstRate = config.player.thirstRate

    if player.PlayerData and player.PlayerData.metadata.diseases.vampirism > 0 then
        hungerRate = 0
        thirstRate = thirstRate * 1.2
    end

    if GetResourceState('bstar-buffs') == 'started' then
        if exports["bstar-buffs"]:HasBuff(player.PlayerData.citizenid, "super-hunger") then
            hungerRate = hungerRate / 2
        end

        if exports["bstar-buffs"]:HasBuff(player.PlayerData.citizenid, "super-thirst") then
            thirstRate = thirstRate / 2
        end
    end

    local newHunger = playerState.hunger - hungerRate
    local newThirst = playerState.thirst - thirstRate

    player.Functions.SetMetaData('thirst', math.max(0, newThirst))
    player.Functions.SetMetaData('hunger', math.max(0, newHunger))

    player.Functions.Save()
end

CreateThread(function()
    local interval = 60000 * config.updateInterval
    while true do
        Wait(interval)
        for src, player in pairs(QBX.Players) do
            removeHungerAndThirst(src, player)
        end
    end
end)

--[[local functiom pay(player)
    local job = player.PlayerData.job
    local payment = GetJob(job.name).grades[job.grade.level].payment or job.payment
    if payment <= 0 then return end
    if not GetJob(job.name).offDutyPay and not job.onduty then return end
    if not config.money.paycheckSociety then
        config.sendPaycheck(player, payment)
        return
    end
    local account = config.getSocietyAccount(job.name)
    if not account or account == 0 then -- Checks if player is employed by a society
        config.sendPaycheck(player, payment)
        return
    end
    if account < payment then -- Checks if company has enough money to pay society
        Notify(player.PlayerData.source, locale('error.company_too_poor'), 'error')
        return
    end
    config.removeSocietyMoney(job.name, payment)
    config.sendPaycheck(player, payment)
end

--[[CreateThread(--[[tion()
    lointerval = 60000 * config.money.paycheckTimeout
    while true do
        Wait(interval)
        for _, player in pairs(QBX.Players) do
            pay(player)
        end
    end
end)]]--
