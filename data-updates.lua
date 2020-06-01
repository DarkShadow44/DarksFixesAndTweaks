function fix_wood_recipe(recipe)
	for k, v in pairs(recipe.results) do
		if v.amount == nil then
			v.amount = 0
		end
		if v.amount_min == nil then
			v.amount_min = v.amount
		end
		if v.amount_max == nil then
			v.amount_max = v.amount
		end
	end
end

if mods["apm_power"] and mods["angelsrefining"] then
	fix_wood_recipe(data.raw.recipe["apm_wood_0"].normal)
	fix_wood_recipe(data.raw.recipe["apm_wood_0"].expensive)
end

if mods["angelsindustries"] and mods["PyCoalTBaA"] then
	data.raw.item["electric-motor-1"].icon = "__angelsindustries__/graphics/icons/motor-1.png"
end

-- Fix crash with Py Alien Life and Bio Industries
for _, tree in pairs(data.raw.tree) do
    if tree.minable ~= nil and tree.minable.results ~= nil then
		fix_wood_recipe(tree.minable)
    end
end
