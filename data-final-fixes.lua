if settings.startup["darks-tweaks-geothermal"].value and mods["Geothermal"] then
	data.raw["mining-drill"]["geothermal-well"].mining_speed = data.raw["mining-drill"]["geothermal-well"].mining_speed * 0.1
	data.raw["resource"]["geothermal"].minimum = 250000
	data.raw["resource"]["geothermal"].normal = 400000
end
