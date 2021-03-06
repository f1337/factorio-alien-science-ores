function AddMapGen(resourceName,order)
data:extend(
{

    {--autoplace-control = new game mapgen menu item to toggle ore generation options (frequency,size,richness,etc.)
        type = "autoplace-control",
        name = resourceName.."-ore",
        richness = true,
        order = order,
        category="resource"
    },
    {
    type = "noise-layer",
    name = resourceName.."-ore",
    },
})
end

function AddLogisticScienceOreMapGen()    
        
    local logistic_localised_name = {"autoplace-control-names.logistic-science-ore","Logistic"}
    if mods["bobtech"] then
        logistic_localised_name = {"autoplace-control-names.logistic-science-ore","Transport"}
    end
    data:extend(
    {
        {
            type = "autoplace-control",
            name = "logistic-science-ore",
            richness = true,
            order = "z-b",
            category="resource",
            localised_name = logistic_localised_name
        },
        {
        type = "noise-layer",
        name = "logistic-science-ore",    
        },
    })            
end

if leighzermods.leighzerscienceores.automationEnabled then
    AddMapGen("automation-science", "z-a")
end
if leighzermods.leighzerscienceores.logisticEnabled then
    AddLogisticScienceOreMapGen()
end
if leighzermods.leighzerscienceores.militaryEnabled then
    AddMapGen("military-science", "z-c")
end
if leighzermods.leighzerscienceores.chemicalEnabled then
    AddMapGen("chemical-science", "z-d")
end
if leighzermods.leighzerscienceores.productionEnabled then
    AddMapGen("production-science", "z-e")
end
if leighzermods.leighzerscienceores.utilityEnabled then 
    AddMapGen("utility-science", "z-f")
end
if leighzermods.leighzerscienceores.spaceEnabled then
    AddMapGen("space-science", "z-g")
end

if mods["bobtech"] and leighzermods.leighzerscienceores.advancedLogisticEnabled then
    AddMapGen("advanced-logistic-science", "z-d-a")
end