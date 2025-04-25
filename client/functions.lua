local positionConfig = require 'config.shared'.notifyPosition

---Text box popup for player which dissappears after a set time.
---@param text table|string text of the notification
---@param notifyType? NotificationType informs default styling. Defaults to 'inform'
---@param duration? integer milliseconds notification will remain on screen. Defaults to 5000
---@param icon? string Font Awesome 6 icon name
---@param iconColor? string Custom color for the icon chosen before
---@param animation? string Custom color for the icon chosen before
---@param style? table Custom styling. Please refer too https://overext ended.dev/ox_lib/Modules/Interface/Client/notify#libnotify
---@param position? NotificationPosition
function Notify(text, notifyType, duration, icon, iconColor, animation, sound, style, position)
    local title, description
    if type(text) == 'table' then
        title = text.text or 'Missing text!'
        description = text.title or nil
    else
        description = text
    end
    local position = position or positionConfig

    --type set & duration
    local notifyType = notifyType or 'inform'
    if notifyType == 'primary' then type = 'inform' end
    duration = duration or 3500

    lib.notify({
        id = title,
        title = title,
        description = description,
        duration = duration,
        type = notifyType,
        position = position,
        style = style,
        icon = icon,
        iconColor = iconColor,
        iconAnimation = animation,
        sound = sound,
    })
end

exports('Notify', Notify)

---@return PlayerData? playerData
function GetPlayerData()
    return QBX.PlayerData
end

exports('GetPlayerData', GetPlayerData)

---@param filter string | string[] | table<string, number>
---@return boolean
function HasPrimaryGroup(filter)
    return HasPlayerGotGroup(filter, QBX.PlayerData, true)
end

exports('HasPrimaryGroup', HasPrimaryGroup)

---@param filter string | string[] | table<string, number>
---@return boolean
function HasGroup(filter)
    return HasPlayerGotGroup(filter, QBX.PlayerData)
end

exports('HasGroup', HasGroup)

---@return table<string, integer>
function GetGroups()
    local playerData = QBX.PlayerData
    return GetPlayerGroups(playerData)
end

exports('GetGroups', GetGroups)