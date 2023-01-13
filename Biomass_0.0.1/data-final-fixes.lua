
local limitation = {
    "bio-chip",
    "grow-tissue",
    "lax-bio-alien-science-pack",
    "bio-fuel-cracking",
}

table.insert(data.raw["lab"]["lab"].inputs,"lax-bio-alien-science-pack")

for i,module in pairs(data.raw["module"]) do
    -- only add to productivity modules and only if they already have a limitatioin table to not override other mods
    if string.match(i,"productivity") and module.limitation and #module.limitation > 0 then
        -- there is probably a utility function for this but oh well.
        for i,v in pairs(limitation) do 
            table.insert(module.limitation,v)
        end
    end
end