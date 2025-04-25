local jobs = require 'shared.jobs'
local gangs = require 'shared.gangs'
local items = require 'shared.items'
local weapons = require 'shared.weapons'

---@return table<string, Job>
function GetJobs()
    return jobs
end

exports('GetJobs', GetJobs)

---@return table<string, Gang>
function GetGangs()
    return gangs
end

exports('GetGangs', GetGangs)

---@return table<string, Item>
function GetItems()
    return items
end

exports('GetItems', GetItems)

---@return table<string, Weapon>
function GetWeapons()
    return weapons
end

exports('GetWeapons', GetWeapons)

---@param name string
---@return Job?
function GetJob(name)
    return jobs[name]
end

exports('GetJob', GetJob)

---@param name string
---@return Gang?
function GetGang(name)
    return gangs[name]
end

exports('GetGang', GetGang)

RegisterNetEvent('qbx_core:client:onJobUpdate', function(jobName, job)
    jobs[jobName] = job
end)

RegisterNetEvent('qbx_core:client:onGangUpdate', function(gangName, gang)
    gangs[gangName] = gang
end)