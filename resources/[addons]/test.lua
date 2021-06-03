Citizen.CreateThread(function()
    local peds = {
        `a_f_m_bevhills_02`,
    }
    exports["bt-target"]:AddTargetModel(peds, {
        options = {
            {
                event = "Random 1event",
                icon = "fas fa-dumpster",
                label = "Random 1",
            },
            {
                event = "Random 2event",
                icon = "fas fa-dumpster",
                label = "Random 2",
            },
            {
                event = "Random 3event",
                icon = "fas fa-dumpster",
                label = "Random 3",
            },
            {
                event = "Random 4event",
                icon = "fas fa-dumpster",
                label = "Random 4",
            },
        },
        job = {"garbage"}
        distance = 2.5
    })

    local coffee = {
        690372739,
    }
    exports["bt-target"]:AddTargetModel(coffee, {
        options = {
            {
                event = "coffeeevent",
                icon = "fas fa-coffee",
                label = "Coffee",
            },
        },
        job = {"all"}
        distance = 2.5
    })
    
    exports["bt-target"]:AddBoxZone("PoliceDuty", vector3(441.79, -982.07, 30.69), 0.4, 0.6, {
	name="PoliceDuty",
	heading=91,
	debugPoly=false,
	minZ=30.79,
	maxZ=30.99
    }, {
        options = {
            {
                event = "signon",
                icon = "far fa-clipboard",
                label = "Sign On",
            },
            {
                event = "signoff",
                icon = "far fa-clipboard",
                label = "Sign Off",
            },
        },
        job = {"police", "ambulance", "mechanic"},
        distance = 1.5
    })
end)


Citizen.CreateThread(function()
    exports["bt-target"]:AddBoxZone("PoliceDuty", vector3(441.79, -982.07, 30.69), 0.4, 0.6, {
        name="PoliceDuty",
        heading=91,
        debugPoly=false,
        minZ=30.79,
        maxZ=30.99
        }, {
            options = {
                {
                    event = "attemptduty",
                    icon = "far fa-clipboard",
                    label = "Sign On",
                },
                {
                    event = "police:officerOnDuty",
                    icon = "far fa-clipboard",
                    label = "Sign Off",
                },
            },
            job = {"police", "ambulance", "mechanic"},
            distance = 1.5
        })
    }
end)    


Citizen.CreateThread(function()
    local coffee = {
        -870868698,
    }
    exports["bt-target"]:AddTargetModel(atm, {
        options = {
            {
                event = "coffeeevent",
                icon = "fas fa-coffee",
                label = "Coffee",
            },
        },
        job = {"all"},
        distance = 2.5
    })

end)    


Citizen.CreateThread(function()
    local peds = {
        `mp_m_shopkeep_01`,
    }
    exports["bt-target"]:AddTargetModel(peds, {
        options = {
            {
                event = "coffeeevent",
                icon = "fas fa-coffee",
                label = "Coffee",
            },
        },
        job = {"all"},
        distance = 2.5
    })

end)    




RegisterNetEvent('NewLongHudText')
AddEventHandler('NewLongHudText', function(text,color,length)
    if HudStage > 2 then return end
    if not color then color = 1 end
    if not length then length = 12000 end
    TriggerEvent("newnotify:guiupdate",color, text, 12000)
end)