if data.raw.recipe["heavy-water"] ~= nil then
	data.raw.recipe["heavy-water"].main_product = "liquid-water-heavy"
end

if mods["Geothermal"] then
	data.raw["mining-drill"]["geothermal-well"].mining_speed = data.raw["mining-drill"]["geothermal-well"].mining_speed * 0.1
	data.raw["resource"]["geothermal"].minimum = 250000
	data.raw["resource"]["geothermal"].normal = 400000
end
