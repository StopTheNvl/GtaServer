
    for i = 1, 255, 1 do
        if NetworkIsPlayerActive(i) then
            local player = GetPlayerFromServerId(id)
            local me = GetPlayerServerId(i)
            local coords = GetEntityCoords(GetPlayerPed(i))
            local doorcoords = (doorCoordsOffset["x"], doorCoordsOffset["y"], doorCoordsOffset["z"])
            local dist = Vdist(doorcoords, coords)
            
            if me == id or dist <= 15 then
             TriggerEvent("DoLongHudText", "[E] " .. closestString .. "" )
                break
            end
        end
    end


    
             local ped = PlayerPedId()
             local coords = GetEntityCoords(ped)
             local doorlocation = vec(doorCoordsOffset["x"], doorCoordsOffset["y"], doorCoordsOffset["z"])

             local dist = #(coords - doorlocation)

            if ped == coords or vec <= 5 then
            TriggerEvent("DoLongHudText", "[E] " .. closestString .. "" )
             end




   local dist = #(vector3(482.57, -995.2, 30.69) - GetEntityCoords(PlayerPedId()))
		if dist < 0.5 and not refreshed then
    TriggerEvent('NewLongHudText',"[E] - Open Police Armory", 3)
        end


