function handle_geothermal()
	for k, chunk in pairs(global.geothermal_chunk_updates) do
		if chunk.ticks == 0 then
			local area = chunk.area
			for x = area.left_top.x,area.right_bottom.x,1 do
				for y = area.left_top.y,area.right_bottom.y,1 do
					local geothermal_patch = chunk.surface.find_entity("geothermal", {x = x, y = y})
					if geothermal_patch then
						geothermal_patch.amount = math.random(300000, 800000)
					end
				end
			end
			global.geothermal_chunk_updates[k] = nil
		else
			chunk.ticks = chunk.ticks - 1
		end
	end
end

script.on_event(defines.events.on_chunk_generated, function(event)
	if settings.startup["darks-tweaks-geothermal"].value and game.active_mods["Geothermal"] then
		-- To prevent race conditions, and because we need to run after Geothermal, delay execution a bit
		table.insert(global.geothermal_chunk_updates, {surface = event.surface, area = event.area, ticks = 10})
	end
end)

script.on_init(function()
	global.geothermal_chunk_updates = {}
end)

script.on_event(defines.events.on_tick, function()
	handle_geothermal()
end)
