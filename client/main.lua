local function DisableSubmix()
    if IsEntityPlayingAnim(PlayerPedId(), "molly@megaphone", "megaphone_clip", 3) then
        ExecuteCommand('e c')
    end
    TriggerServerEvent('jraxion_megaphone:applySubmix', false)
end 

local usingMegaphone = false

function UseMegaphone()
    if usingMegaphone then
        DisableSubmix()
    end
    usingMegaphone = not usingMegaphone
    CreateThread(function()
        if usingMegaphone then
            TriggerServerEvent('jraxion_megaphone:applySubmix', true)
        end
        while usingMegaphone do
            if not IsEntityPlayingAnim(PlayerPedId(), "molly@megaphone", "megaphone_clip", 3) then
                ExecuteCommand('e megaphone')
            end
            Wait(100)
        end
    end)
end

exports('UseMegaphone', UseMegaphone)

RegisterNetEvent('jraxion_megaphone:use')
AddEventHandler('jraxion_megaphone:use', function()
    UseMegaphone()
end)

local data = {
    [`default`] = 1,
    [`freq_low`] = 300.0,
    [`freq_hi`] = 5000.0,
    [`rm_mod_freq`] = 0.0,
    [`rm_mix`] = 0.2,
    [`fudge`] = 0.0,
    [`o_freq_lo`] = 550.0,
    [`o_freq_hi`] = 0.0,
}

local filter

CreateThread(function()
    filter = CreateAudioSubmix("Megaphone")
    SetAudioSubmixEffectRadioFx(filter, 0)
    for hash, value in pairs(data) do
        SetAudioSubmixEffectParamInt(filter, 0, hash, 1)
    end
    AddAudioSubmixOutput(filter, 0)
end)

RegisterNetEvent('jraxion_megaphone:updateSubmixStatus', function(state, source)
    if state then
        if MEGAPHONE.ForceVolume then
            MumbleSetVolumeOverrideByServerId(source, 0.90)
        end
        MumbleSetSubmixForServerId(source, filter)
        exports['pma-voice']:overrideProximityRange(MEGAPHONE.ForcedProximity, false)
    else
        MumbleSetSubmixForServerId(source, -1)
        if MEGAPHONE.ForceVolume then
            MumbleSetVolumeOverrideByServerId(source, -1.0)
        end
        exports['pma-voice']:clearProximityOverride()
        MumbleClearVoiceTargetPlayers(1.0)
    end
end)