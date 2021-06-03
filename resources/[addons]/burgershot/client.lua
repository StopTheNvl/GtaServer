

function DrawText3DTest(x,y,z, text)

    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 41, 11, 41, 68)
end


Controlkey = {["generalUse"] = {38,"E"}} 
RegisterNetEvent('event:control:update')
AddEventHandler('event:control:update', function(table)
  Controlkey["generalUse"] = table["generalUse"]
end)


Citizen.CreateThread(function()
  Citizen.Wait(1000)
  while true do
  local ped = GetPlayerPed(-1)
  local pos = GetEntityCoords(ped)

local dist = #(vector3(-1196.9294433594,-893.97058105469,13.995240211487) - GetEntityCoords(PlayerPedId()))
              if dist < 0.2 and not refreshed then
                DrawText3DTest(-1197.0975341797,-893.84100341797,14.5,"~g~[E] ~s~Burger Shot")
              if IsControlJustReleased(0, 86) then
              Citizen.Wait(10)
              TriggerEvent("server-inventory-open", "1", "Storage-101");	
    end
end
      Citizen.Wait(5)
  end
end)


Citizen.CreateThread(function()
  Citizen.Wait(1000)
  while true do
  local ped = GetPlayerPed(-1)
  local pos = GetEntityCoords(ped)

local dist = #(vector3(-1190.20,-904.77270507812,13.998951911926) - GetEntityCoords(PlayerPedId()))
              if dist < 0.2 and not refreshed then
                DrawText3DTest(-1190.20,-904.77270507812,13.998951911926,"~g~[E] ~s~Burger Shot")
              if IsControlJustReleased(0, 86) then
              Citizen.Wait(10)
              TriggerEvent("server-inventory-open", "1", "Storage-101");	
    end
end

local dist = #(vector3(-1198.3247070312,-894.66394042969,13.995241165161) - GetEntityCoords(PlayerPedId()))
              if dist < 0.1 and not refreshed then
                DrawText3DTest(-1198.3247070312,-894.66394042969,14.5, "~g~[E] ~s~Burger Shot")
              if IsControlJustReleased(0, 86) then
              Citizen.Wait(10)
              TriggerEvent("server-inventory-open", "1", "Storage-101");	
    end
end
      Citizen.Wait(5)
  end
end)



Citizen.CreateThread(function()
  Citizen.Wait(1000)
  while true do
  local ped = GetPlayerPed(-1)
  local pos = GetEntityCoords(ped)

local dist = #(vector3(-1195.3026123047,-892.27722167969,13.995234489441) - GetEntityCoords(PlayerPedId()))
              if dist < 0.9 and not refreshed then
                DrawText3DTest(-1195.3026123047,-892.27722167969,13.995234489441,"~g~[E] ~s~ Take Your Stuff")
              if IsControlJustReleased(0, 86) then
              Citizen.Wait(10)
              TriggerEvent("server-inventory-open", "1", "Storage-110");	
    end
end


local dist = #(vector3(-1194.0289306641,-894.21655273438,13.995234489441) - GetEntityCoords(PlayerPedId()))
              if dist < 0.9 and not refreshed then
                DrawText3DTest(-1194.0289306641,-894.21655273438,13.995234489441,"~g~[E] ~s~ Take Your Stuff")
              if IsControlJustReleased(0, 86) then
              Citizen.Wait(10)
              TriggerEvent("server-inventory-open", "1", "Storage-111");	
    end
end
      Citizen.Wait(5)
  end
end)


Citizen.CreateThread(function()
  Citizen.Wait(1000)
  while true do
  local ped = GetPlayerPed(-1)
  local pos = GetEntityCoords(ped)

local dist = #(vector3(-1203.5310058594,-896.22613525391,14.915080070496) - GetEntityCoords(PlayerPedId()))
              if dist < 1.4 and not refreshed then
                DrawText3DTest(-1203.5310058594,-896.22613525391,14.5,"~g~[E] ~s~Burger Shot Ingredients")
              if IsControlJustReleased(0, 86) then
              Citizen.Wait(10)
              TriggerEvent("server-inventory-open", "1", "Storage-105");	
    end
end

      Citizen.Wait(5)
  end
end)



Citizen.CreateThread(function()
  Citizen.Wait(1000)
  while true do
  local ped = GetPlayerPed(-1)
  local pos = GetEntityCoords(ped)
 local dist = #(vector3(-1198.6960449219, -895.62463378906, 13.99524307251) - GetEntityCoords(PlayerPedId()))
      if dist < 0.2 and not refreshed then
        DrawText3DTest(-1198.90, -895.80, 14.5,"~g~[E] ~s~Milk Shake")
        if IsControlJustReleased(0, 86) then
          if exports["np-inventory"]:hasEnoughOfItem("milk",2,false) then
            if exports["np-inventory"]:hasEnoughOfItem("ice1",4,false) then
              if exports["np-inventory"]:hasEnoughOfItem("sugar",1,false) then
                TriggerEvent("animation:PlayAnimation","handshake")
                 local finished = exports["np-taskbar"]:taskBar(4000,"Making Milk Shake...")
             if (finished == 100) then
              Wait(100)
              
              TriggerEvent('inventory:removeItem',"milk", 2)
              ---------------------------------------------
              TriggerEvent('inventory:removeItem',"ice1", 4)
              ----------------------------------------------
              TriggerEvent('inventory:removeItem',"sugar", 1)
              ----------------------------------------------
              Wait(100)
              TriggerEvent("player:receiveItem","mshake",5)
             end
            else
              TriggerEvent("DoLongHudText", "You Dont Have Required Ingredients", 2)
            end
          else
            TriggerEvent("DoLongHudText", "You Dont Have Required Ingredients", 2)
          end
        else
          TriggerEvent("DoLongHudText", "You Dont Have Required Ingredients", 2)
        end
      end
    end
      Citizen.Wait(5)
  end
end)


Citizen.CreateThread(function()
  Citizen.Wait(1000)
  while true do
  local ped = GetPlayerPed(-1)
  local pos = GetEntityCoords(ped)
  local dist = #(vector3(-1197.5623779297,-899.37902832031,13.995238304138) - GetEntityCoords(PlayerPedId()))
      if dist < 0.8 and not refreshed then
        DrawText3DTest(-1197.5623779297,-899.37902832031,13.995238304138,"~g~[E] ~s~ To Chopp Potato's ")
        if IsControlJustReleased(0, 86) then
          if exports["np-inventory"]:hasEnoughOfItem("potato",1,false) then
                 local finished = exports["np-taskbar"]:taskBar(6000,"Chopping Potato's")
             if (finished == 100) then
              Wait(100)
              
              TriggerEvent('inventory:removeItem',"potato", 1)
              ----------------------------------------------
              Wait(100)
              TriggerEvent("player:receiveItem","cpotato",15)
             end
        else
          TriggerEvent("DoLongHudText", "You Dont Have Potato's", 2)
        end
      end
    end
      Citizen.Wait(5)
  end
end)


Citizen.CreateThread(function()
  Citizen.Wait(1000)
  while true do
  local ped = GetPlayerPed(-1)
  local pos = GetEntityCoords(ped)
  local dist = #(vector3(-1201.6096191406,-899.04089355469,13.995239257812) - GetEntityCoords(PlayerPedId()))
      if dist < 0.7 and not refreshed then
        DrawText3DTest(-1201.6096191406,-899.04089355469,13.995239257812,"~g~[E] ~s~ To Make Fries")
        if IsControlJustReleased(0, 86) then
          if exports["np-inventory"]:hasEnoughOfItem("cpotato",15,false) then
                 local finished = exports["np-taskbar"]:taskBar(4000,"Making Fries")
             if (finished == 100) then
              Wait(100)
              
              TriggerEvent('inventory:removeItem',"cpotato", 15)
              ----------------------------------------------
              Wait(100)
              TriggerEvent("player:receiveItem","fries",20)
             end
        else
          TriggerEvent("DoLongHudText", "You Dont Have Chopped Potato's", 2)
        end
      end
    end

      local dist = #(vector3(-1202.1041259766,-898.28533935547,13.995242118835) - GetEntityCoords(PlayerPedId()))
      if dist < 0.7 and not refreshed then
        DrawText3DTest(-1202.1041259766,-898.28533935547,13.995242118835,"~g~[E] ~s~ To Make Fries")
        if IsControlJustReleased(0, 86) then
          if exports["np-inventory"]:hasEnoughOfItem("cpotato",15,false) then
                 local finished = exports["np-taskbar"]:taskBar(4000,"Making Fries")
             if (finished == 100) then
              Wait(100)
              
              TriggerEvent('inventory:removeItem',"cpotato", 15)
              ----------------------------------------------
              Wait(100)
              TriggerEvent("player:receiveItem","fries",20)
             end
        else
          TriggerEvent("DoLongHudText", "You Dont Have Chopped Potato's", 2)
        end
      end
    end


    local dist = #(vector3(-1201.10,-899.70255126953,13.995240211487) - GetEntityCoords(PlayerPedId()))
    if dist < 0.7 and not refreshed then
      DrawText3DTest(-1201.1,-899.70255126953,13.995240211487,"~g~[E] ~s~ To Make Fries")
      if IsControlJustReleased(0, 86) then
        if exports["np-inventory"]:hasEnoughOfItem("cpotato",15,false) then
               local finished = exports["np-taskbar"]:taskBar(4000,"Making Fries")
           if (finished == 100) then
            Wait(100)
            
            TriggerEvent('inventory:removeItem',"cpotato", 15)
            ----------------------------------------------
            Wait(100)
            TriggerEvent("player:receiveItem","fries",20)
           end
      else
        TriggerEvent("DoLongHudText", "You Dont Have Chopped Potato's", 2)
      end
    end
  end

      Citizen.Wait(5)
  end
end)