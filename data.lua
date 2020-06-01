if mods["bobtech"] and mods["Clowns-Science"] and mods["ScienceCostTweakerM"] and mods["pycoalprocessing"] then
	settings.startup["bobmods-tech-colorupdate"].value = false
end

if mods["ScienceCostTweakerM"] and mods["angelsbioprocessing"] then
	local tech = data.raw.technology["sct-bio-science-pack"]
	for k, v in pairs(tech.prerequisites) do
		if v == "bio-farm" then
			tech.prerequisites[k] = "bio-farm-1"
		end
	end
end

-- Fix bug with PyCoalTBaA
--if mods["angelssmelting"] and mods["PyCoalTBaA"] and mods["aai-industry"] then
--	table.insert(data.raw.technology["ore-crushing"].unit.ingredients,{"science-pack-0",1})
--end