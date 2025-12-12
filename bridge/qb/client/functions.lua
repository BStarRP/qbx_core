require 'client.functions'
local functions = {}

-- Player

---@deprecated import PlayerData using module 'qbx_core:playerdata' https://docs.qbox.re/resources/qbx_core/modules/playerdata
---@param cb? fun(playerData: PlayerData)
---@return PlayerData? playerData
function functions.GetPlayerData(cb)
    if not cb then return QBX.PlayerData end
    cb(QBX.PlayerData)
end

---@deprecated use the GetEntityCoords and GetEntityHeading natives directly
functions.GetCoords = function(entity) -- luacheck: ignore
    local coords = GetEntityCoords(entity)
    return vec4(coords.x, coords.y, coords.z, GetEntityHeading(entity))
end

---@deprecated use https://coxdocs.dev/ox_inventory/Functions/Client#search
functions.HasItem = function(items, amount)
	if not items then return false end
	amount = amount ~= nil and amount or 1
    local found = true
    if type(items) == 'table' then
        if items[1] then
            for i = 1, #items do
                local count = exports.ox_inventory:Search('count', items[i])
                if count and count < amount then
                    found = false
                    break
                end
            end
        else
            for k, v in pairs(items) do
                local count = exports.ox_inventory:Search('count', k)
                if count and count < v then
                    found = false
                end
            end
        end
    elseif type(items) == 'string' then
        local count = exports.ox_inventory:Search('count', items)
        if count and count < amount then
            found = false
        end
    end
    return found
end

-- Utility

---@deprecated use qbx.drawText2d from modules/lib.lua
functions.DrawText = function(x, y, width, height, scale, r, g, b, a, text)
    qbx.drawText2d({
        text = text,
        coords = vec2(x, y),
        scale = scale,
        font = 4,
        color = vec4(r, g, b, a),
        width = width,
        height = height,
    })
end

---@deprecated use qbx.drawText3d from modules/lib.lua
functions.DrawText3D = function(x, y, z, text, color)
    qbx.drawText3d({
        text = text,
        coords = vec3(x, y, z),
        scale = 0.35,
        font = 4,
        color = color or vec4(255, 255, 255, 215),
        enableDropShadow = true,
        enableOutline = true,
        disableDrawRect = true,
    })
end

---@deprecated use lib.requestAnimDict from ox_lib
functions.RequestAnimDict = lib.requestAnimDict

---@deprecated use lib.requestAnimDict from ox_lib, and the TaskPlayAnim and RemoveAnimDict natives directly
functions.PlayAnim = function(animDict, animName, upperbodyOnly, duration)
    local flags = upperbodyOnly and 16 or 0
    local runTime = duration or -1
    lib.playAnim(cache.ped, animDict, animName, 8.0, 3.0, runTime, flags, 0.0, false, false, true)
end

---@deprecated use lib.requestModel from ox_lib
functions.LoadModel = lib.requestModel

---@deprecated use lib.requestAnimSet from ox_lib
functions.LoadAnimSet = lib.requestAnimSet

---@deprecated use lib.progressBar from ox_lib
---@param label string
---@param duration integer ms
---@param useWhileDead boolean
---@param canCancel boolean
---@param disableControls? {disableMovement: boolean, disableCarMovement: boolean, disableCombat: boolean, disableMouse: boolean}
---@param animation? {animDict: string, anim: string, flags: unknown}
---@param prop? unknown
---@param onFinish fun()
---@param onCancel fun()
function functions.Progressbar(_, label, duration, useWhileDead, canCancel, disableControls, animation, prop, _, onFinish, onCancel, icon)
    if GetResourceState('ls_progressbar') ~= 'started' then
        if lib.progressBar({
            duration = duration,
            label = label,
            useWhileDead = useWhileDead,
            canCancel = canCancel,
            disable = {
                move = disableControls?.disableMovement,
                car = disableControls?.disableCarMovement,
                combat = disableControls?.disableCombat,
                mouse = disableControls?.disableMouse,
            },
            anim = {
                dict = animation?.animDict,
                clip = animation?.anim,
                flags = animation?.flags,
                emote = animation?.emote,
            },
            prop = {
                model = prop?.model,
                pos = prop?.coords,
                rot = prop?.rotation,
            },
        }) then
            if onFinish then
                onFinish()
            end
        else
            if onCancel then
                onCancel()
            end
        end
    else
        if exports.ls_progressbar:progressBar({
            duration = duration,
            label = label,
            useWhileDead = useWhileDead,
            canCancel = canCancel,
            icon = icon,
            disable = {
                move = disableControls?.disableMovement,
                car = disableControls?.disableCarMovement,
                combat = disableControls?.disableCombat,
                mouse = disableControls?.disableMouse,
            },
            anim = {
                dict = animation?.animDict,
                clip = animation?.anim,
                flags = animation?.flags,
                emote = animation?.emote,
            },
            prop = {
                model = prop?.model,
                pos = prop?.coords,
                rot = prop?.rotation,
            },
        }) then
            if onFinish then
                onFinish()
            end
        else
            if onCancel then
                onCancel()
            end
        end
    end
end

-- Getters

---@param pool string
---@param ignoreList? integer[]
---@return integer[]
local function getEntities(pool, ignoreList) -- luacheck: ignore
    ignoreList = ignoreList or {}
    local ents = GetGamePool(pool)
    local entities = {}
    local ignoreMap = {}
    for i = 1, #ignoreList do
        ignoreMap[ignoreList[i]] = true
    end

    for i = 1, #ents do
        local entity = ents[i]
        if not ignoreMap[entity] then
            entities[#entities + 1] = entity
        end
    end
    return entities
end

---@deprecated use the GetGamePool('CVehicle') native directly
functions.GetVehicles = function()
    return GetGamePool('CVehicle')
end

---@deprecated use the GetGamePool('CObject') native directly
functions.GetObjects = function()
    return GetGamePool('CObject')
end

---@deprecated use the GetActivePlayers native directly
functions.GetPlayers = GetActivePlayers

---@deprecated use the GetGamePool('CPed') native directly
functions.GetPeds = function(ignoreList)
    return getEntities('CPed', ignoreList)
end

---@param entities integer[]
---@param coords vector3? if unset uses player coords
---@return integer closestObj or -1
---@return number closestDistance or -1
local function getClosestEntity(entities, coords) -- luacheck: ignore
    coords = type(coords) == 'table' and vec3(coords.x, coords.y, coords.z) or coords or GetEntityCoords(cache.ped)
    local closestDistance = -1
    local closestEntity = -1
    for i = 1, #entities do
        local entity = entities[i]
        local entityCoords = GetEntityCoords(entity)
        local distance = #(entityCoords - coords)
        if closestDistance == -1 or closestDistance > distance then
            closestEntity = entity
            closestDistance = distance
        end
    end
    return closestEntity, closestDistance
end

---@deprecated use lib.getClosestPed from ox_lib
---Use GetClosestPlayer if wanting to ignore non-player peds
functions.GetClosestPed = function(coords, ignoreList)
    return getClosestEntity(getEntities('CPed', ignoreList), coords)
end

---@deprecated use qbx.isWearingGloves from modules/lib.lua
functions.IsWearingGloves = qbx.isWearingGloves

functions.GetSkillLabel = qbx.getSkillLabel
functions.GetLicenseLabel = qbx.getLicenseLabel
functions.GetReputationLabel = qbx.getReputationLabel
functions.GetDiseaseLabel = qbx.getDiseaseLabel

---@deprecated use lib.getClosestPlayer from ox_lib
functions.GetClosestPlayer = function(coords) -- luacheck: ignore
    coords = type(coords) == 'table' and vec3(coords.x, coords.y, coords.z) or coords or GetEntityCoords(cache.ped)
    local playerId, _, playerCoords = lib.getClosestPlayer(coords, 5, false)
    local closestDistance = playerCoords and #(playerCoords - coords) or nil
    return playerId or -1, closestDistance or -1
end

---@deprecated use lib.getNearbyPlayers from ox_lib
functions.GetPlayersFromCoords = function(coords, radius)
    coords = type(coords) == 'table' and vec3(coords.x, coords.y, coords.z) or coords or GetEntityCoords(cache.ped)
    local players = lib.getNearbyPlayers(coords, radius or 5, true)

    -- This is for backwards compatability as beforehand it only returned the PlayerId, where Lib returns PlayerPed, PlayerId and PlayerCoords
    for i = 1, #players do
        players[i] = players[i].id
    end

    return players
end

---@deprecated use lib.getClosestVehicle from ox_lib
functions.GetClosestVehicle = function(coords)
    return getClosestEntity(GetGamePool('CVehicle'), coords)
end

---@deprecated use lib.getClosestObject from ox_lib
functions.GetClosestObject = function(coords)
    return getClosestEntity(GetGamePool('CObject'), coords)
end

---@deprecated use the GetWorldPositionOfEntityBone native and calculate distance directly
functions.GetClosestBone = function(entity, list)
    local playerCoords = GetEntityCoords(cache.ped)

    ---@type integer | {id: integer} | {id: integer, type: string, name: string}, vector3, number
    local bone, coords, distance
    for _, element in pairs(list) do
        local boneCoords = GetWorldPositionOfEntityBone(entity, element.id or element)
        local boneDistance = #(playerCoords - boneCoords)
        if not coords or distance > boneDistance then
            bone = element
            coords = boneCoords
            distance = boneDistance
        end
    end
    if not bone then
        bone = {id = GetEntityBoneIndexByName(entity, 'bodyshell'), type = 'remains', name = 'bodyshell'}
        coords = GetWorldPositionOfEntityBone(entity, bone.id)
        distance = #(coords - playerCoords)
    end
    return bone, coords, distance
end

---@deprecated use the GetWorldPositionOfEntityBone native and calculate distance directly
functions.GetBoneDistance = function(entity, boneType, bone)
    local boneIndex = boneType == 1 and GetPedBoneIndex(entity, bone --[[@as integer]]) or GetEntityBoneIndexByName(entity, bone --[[@as string]])
    local boneCoords = GetWorldPositionOfEntityBone(entity, boneIndex)
    local playerCoords = GetEntityCoords(cache.ped)
    return #(playerCoords - boneCoords)
end

---@deprecated use the AttachEntityToEntity native directly
functions.AttachProp = function(ped, model, boneId, x, y, z, xR, yR, zR, vertex)
    local modelHash = type(model) == 'string' and joaat(model) or model
    local bone = GetPedBoneIndex(ped, boneId)
    lib.requestModel(modelHash)
    local prop = CreateObject(modelHash, 1.0, 1.0, 1.0, true, true, false)
    AttachEntityToEntity(prop, ped, bone, x, y, z, xR, yR, zR, true, true, false, true, not vertex and 2 or 0, true)
    SetModelAsNoLongerNeeded(modelHash)
    return prop
end

-- Vehicle

---@deprecated use qbx.spawnVehicle from modules/lib.lua
---@param model string|number
---@param cb? fun(vehicle: number)
---@param coords? vector4 player position if not specified
---@param isnetworked? boolean defaults to true
---@param teleportInto boolean teleport player to driver seat if true
function functions.SpawnVehicle(model, cb, coords, isnetworked, teleportInto)
    local playerCoords = GetEntityCoords(cache.ped)
    local combinedCoords = vec4(playerCoords.x, playerCoords.y, playerCoords.z, GetEntityHeading(cache.ped))
    coords = type(coords) == 'table' and vec4(coords.x, coords.y, coords.z, coords.w or combinedCoords.w) or coords or combinedCoords
    model = type(model) == 'string' and joaat(model) or model
    if not IsModelInCdimage(model) then return end

    isnetworked = isnetworked == nil or isnetworked
    lib.requestModel(model)
    local veh = CreateVehicle(model, coords.x, coords.y, coords.z, coords.w, isnetworked, false)
    local netid = NetworkGetNetworkIdFromEntity(veh)
    SetVehicleHasBeenOwnedByPlayer(veh, true)
    SetNetworkIdCanMigrate(netid, true)
    SetVehicleNeedsToBeHotwired(veh, false)
    SetVehRadioStation(veh, 'OFF')
    SetVehicleFuelLevel(veh, 100.0)
    SetModelAsNoLongerNeeded(model)
    if teleportInto then TaskWarpPedIntoVehicle(cache.ped, veh, -1) end
    if cb then cb(veh) end
end

---@deprecated use qbx.deleteVehicle from modules/lib.lua
functions.DeleteVehicle = qbx.deleteVehicle

---@deprecated use qbx.getVehiclePlate from modules/lib.lua
functions.GetPlate = function(vehicle)
    if vehicle == 0 then return end
    return qbx.getVehiclePlate(vehicle)
end

---@deprecated use qbx.getVehicleDisplayName from modules/lib.lua
functions.GetVehicleLabel = function(vehicle)
    if vehicle == nil or vehicle == 0 then return end
    return qbx.getVehicleDisplayName(vehicle)
end

---@deprecated use lib.getNearbyVehicles from ox_lib
functions.SpawnClear = function(coords, radius)
    coords = type(coords) == 'table' and vec3(coords.x, coords.y, coords.z) or coords or GetEntityCoords(cache.ped)
    radius = radius or 5
    local vehicles = GetGamePool('CVehicle')
    local closeVeh = {}
    for i = 1, #vehicles do
        local vehicleCoords = GetEntityCoords(vehicles[i])
        local distance = #(vehicleCoords - coords)
        if distance <= radius then
            closeVeh[#closeVeh + 1] = vehicles[i]
        end
    end
    return #closeVeh == 0
end

---@deprecated use lib.getVehicleProperties from ox_lib
function functions.GetVehicleProperties(vehicle)
    return lib.getVehicleProperties(vehicle)
end

---@deprecated use lib.setVehicleProperties from ox_lib
function functions.SetVehicleProperties(vehicle, props)
    lib.setVehicleProperties(vehicle, props)
end

---@deprecated use lib.requestNamedPtfxAsset from ox_lib
functions.LoadParticleDictionary = lib.requestNamedPtfxAsset

---@deprecated use ParticleFx natives directly
functions.StartParticleAtCoord = function(dict, ptName, looped, coords, rot, scale, alpha, color, duration) -- luacheck: ignore
    coords = type(coords) == 'table' and vec3(coords.x, coords.y, coords.z) or coords or GetEntityCoords(cache.ped)

    lib.requestNamedPtfxAsset(dict)
    UseParticleFxAssetNextCall(dict)
    SetPtfxAssetNextCall(dict)
    local particleHandle
    if looped then
        particleHandle = StartParticleFxLoopedAtCoord(ptName, coords.x, coords.y, coords.z, rot.x, rot.y, rot.z, scale or 1.0, false, false, false, false)
        if color then
            SetParticleFxLoopedColour(particleHandle, color.r, color.g, color.b, false)
        end
        SetParticleFxLoopedAlpha(particleHandle, alpha or 10.0)
        if duration then
            Wait(duration)
            StopParticleFxLooped(particleHandle, false)
        end
    else
        SetParticleFxNonLoopedAlpha(alpha or 1.0)
        if color then
            SetParticleFxNonLoopedColour(color.r, color.g, color.b)
        end
        StartParticleFxNonLoopedAtCoord(ptName, coords.x, coords.y, coords.z, rot.x, rot.y, rot.z, scale or 1.0, false, false, false)
    end
    return particleHandle
end

---@deprecated use ParticleFx natives directly
functions.StartParticleOnEntity = function(dict, ptName, looped, entity, bone, offset, rot, scale, alpha, color, evolution, duration) -- luacheck: ignore
    lib.requestNamedPtfxAsset(dict)
    UseParticleFxAssetNextCall(dict)
    local particleHandle = nil
    ---@cast bone number
    local pedBoneIndex = bone and GetPedBoneIndex(entity, bone) or 0
    ---@cast bone string
    local nameBoneIndex = bone and GetEntityBoneIndexByName(entity, bone) or 0
    local entityType = GetEntityType(entity)
    local boneID = entityType == 1 and (pedBoneIndex ~= 0 and pedBoneIndex) or (looped and nameBoneIndex ~= 0 and nameBoneIndex)
    if looped then
        if boneID then
            particleHandle = StartParticleFxLoopedOnEntityBone(ptName, entity, offset.x, offset.y, offset.z, rot.x, rot.y, rot.z, boneID, scale or 1.0, false, false, false)
        else
            particleHandle = StartParticleFxLoopedOnEntity(ptName, entity, offset.x, offset.y, offset.z, rot.x, rot.y, rot.z, scale or 1.0, false, false, false)
        end
        if evolution then
            SetParticleFxLoopedEvolution(particleHandle, evolution.name, evolution.amount, false)
        end
        if color then
            SetParticleFxLoopedColour(particleHandle, color.r, color.g, color.b, false)
        end
        SetParticleFxLoopedAlpha(particleHandle, alpha or 1.0)
        if duration then
            Wait(duration)
            StopParticleFxLooped(particleHandle, false)
        end
    else
        SetParticleFxNonLoopedAlpha(alpha or 1.0)
        if color then
            SetParticleFxNonLoopedColour(color.r, color.g, color.b)
        end
        if boneID then
            StartParticleFxNonLoopedOnPedBone(ptName, entity, offset.x, offset.y, offset.z, rot.x, rot.y, rot.z, boneID, scale or 1.0, false, false, false)
        else
            StartParticleFxNonLoopedOnEntity(ptName, entity, offset.x, offset.y, offset.z, rot.x, rot.y, rot.z, scale or 1.0, false, false, false)
        end
    end
    return particleHandle
end

---@deprecated use qbx.getStreetName from modules/lib.lua
functions.GetStreetNametAtCoords = qbx.getStreetName

---@deprecated use qbx.getZoneName from modules/lib.lua
functions.GetZoneAtCoords = qbx.getZoneName

---@deprecated use qbx.getCardinalDirection from modules/lib.lua
functions.GetCardinalDirection = function(entity)
    if not entity or not DoesEntityExist(entity) then
        return 'Cardinal Direction Error'
    end

    return qbx.getCardinalDirection(entity)
end

---@deprecated use the GetClockMinutes and GetClockHours natives and format the output directly
functions.GetCurrentTime = function()
    local obj = {}
    obj.min = GetClockMinutes()
    obj.hour = GetClockHours()

    if obj.hour <= 12 then
        obj.ampm = 'AM'
    elseif obj.hour >= 13 then
        obj.ampm = 'PM'
        obj.formattedHour = obj.hour - 12
    end

    if obj.min <= 9 then
        obj.formattedMin = ('0%s'):format(obj.min)
    end

    return obj
end

---@deprecated use the GetGroundZFor_3dCoord native directly
functions.GetGroundZCoord = function(coords)
    if not coords then return end

    local retval, groundZ = GetGroundZFor_3dCoord(coords.x, coords.y, coords.z, false)
    if retval then
        return vec3(coords.x, coords.y, groundZ)
    end

    lib.print.verbose('Couldn\'t find Ground Z Coordinates given 3D Coordinates:', coords)
    return coords
end

---Text box popup for player which dissappears after a set time.
---@param text table|string text of the notification
---@param notifyType? NotificationType informs default styling. Defaults to 'inform'
---@param duration? integer milliseconds notification will remain on screen. Defaults to 5000
---@param icon? string Font Awesome 6 icon name
---@param iconColor? string Custom color for the icon chosen before
---@param animation? string Animation type. Defaults to 'fade'
---@param sound? table Sound to play. Defaults to 'default'
---@param style? table Custom styling. Please refer too https://overextended.dev/ox_lib/Modules/Interface/Client/notify#libnotify
---@param position? NotificationPosition
function functions.Notify(text, notifyType, duration, icon, iconColor, animation, sound, style, position)
    exports.qbx_core:Notify(text, notifyType, duration, icon, iconColor, animation, sound, style, position)
end

return functions
