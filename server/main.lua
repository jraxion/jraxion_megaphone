if GetResourceState('ox_inventory') == 'started' then
    -- if there is ox_inventory, then we need to register the item in the inventory
else
    local jraxionlib = exports.jraxion_lib:Core()

    jraxionlib.Inventory.RegisterUsableItem('megaphone', function(source)
        TriggerClientEvent('jraxion_megaphone:use', source)
    end)
end

RegisterNetEvent('jraxion_megaphone:applySubmix', function(bool)
    TriggerClientEvent('jraxion_megaphone:updateSubmixStatus', -1, bool, source)
end)
