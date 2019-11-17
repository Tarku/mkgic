-- Aerialite --
minetest.register_craftitem("mkgic:aerialite",{
	description = "Aerialite",
	inventory_image = "mkgic_aerialite.png"
})

-- Pyrolite --
minetest.register_craftitem("mkgic:pyrolite",{
	description = "Pyrolite",
	inventory_image = "mkgic_pyrolite.png"
})

-- Pyraerialite --
minetest.register_craftitem("mkgic:pyraerialite",{
	description = "Pyraerialite",
	inventory_image = "mkgic_pyraerialite.png"
})

-- Hydrolite --
minetest.register_craftitem("mkgic:hydrolite",{
	description = "Hydrolite",
	inventory_image = "mkgic_hydrolite.png"
})

-- Phyllolite --
minetest.register_craftitem("mkgic:phyllolite",{
	description = "Phyllolite",
	inventory_image = "mkgic_phyllolite.png"
})

-- Cryolite --
minetest.register_craftitem("mkgic:cryolite",{
	description = "Cryolite",
	inventory_image = "mkgic_cryolite.png"
})


-- Geolite --
minetest.register_craftitem("mkgic:geolite",{
	description = "Geolite",
	inventory_image = "mkgic_geolite.png"
})

-- Neolite --
minetest.register_craftitem("mkgic:neolite",{
	description = "Neolite",
	inventory_image = "mkgic_neolite.png"
})
minetest.register_node("mkgic:neoligen",{
	description = "Neoligen",
	tiles = {
		"mkgic_neolite_top.png",
		"map.png",
		"mkgic_neolite_sides.png",
		"mkgic_neolite_sides.png",
		"mkgic_neolite_sides.png",
		"mkgic_neolite_sides.png"
	},
	drawtype = "nodebox",
	groups = {cracky = 2},
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.375, -0.5, 0.5, -0.5, 0.5}, -- NodeBox1
			{-0.5, -0.5, -0.5, -0.3125, -0.3125, 0.5}, -- NodeBox2
			{0.3125, -0.5, -0.5, 0.5, -0.3125, 0.5}, -- NodeBox3
			{-0.5, -0.5, -0.5, 0.5, -0.3125, -0.3125}, -- NodeBox4
			{-0.5, -0.5, 0.3125, 0.5, -0.3125, 0.5}, -- NodeBox5
		}
	},
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		meta:set_int("tinmpasde",0)
		meta:set_string("it1","")
		meta:set_string("it2","")
	end,
	on_rightclick = function(pos, node, player, pointed_thing)
		local meta = minetest.get_meta(pos)
		local inv = player:get_inventory()
		local wielded_item = player:get_wielded_item()
		local itemname = wielded_item:get_name()
		meta:set_int("tinmpasde",meta:get_int("tinmpasde")+1)
		if meta:get_int("tinmpasde") == 1 then
			meta:set_string("it1",tostring(itemname))
			wielded_item:take_item()
			return wielded_item
		elseif meta:get_int("tinmpasde") == 2 then
			meta:set_string("it2",tostring(itemname))
			wielded_item:take_item()
			if meta:get_string("it1") == "mkgic:neolite" and meta:get_string("it2") == "mkgic:mana_fire" then
				if inv:room_for_item("main","mkgic:pyrolite") then
					inv:add_item("main","mkgic:pyrolite")
					meta:set_int("tinmpasde",0)
				end
			elseif meta:get_string("it1") == "mkgic:neolite" and meta:get_string("it2") == "mkgic:mana_water" then
				if inv:room_for_item("main","mkgic:hydrolite") then
					inv:add_item("main","mkgic:hydrolite")
					meta:set_int("tinmpasde",0)
				end
			elseif meta:get_string("it1") == "mkgic:neolite" and meta:get_string("it2") == "mkgic:mana_the_forest" then
				if inv:room_for_item("main","mkgic:phyllolite") then
					inv:add_item("main","mkgic:phyllolite")
					meta:set_int("tinmpasde",0)
				end
			elseif meta:get_string("it1") == "mkgic:neolite" and meta:get_string("it2") == "mkgic:mana_earth" then
				if inv:room_for_item("main","mkgic:geolite") then
					inv:add_item("main","mkgic:geolite")
					meta:set_int("tinmpasde",0)
				end
			elseif meta:get_string("it1") == "mkgic:neolite" and meta:get_string("it2") == "mkgic:mana_wind" then
				if inv:room_for_item("main","mkgic:aerialite") then
					inv:add_item("main","mkgic:aerialite")
					meta:set_int("tinmpasde",0)
				end
			elseif meta:get_string("it1") == "mkgic:hydrolite" and meta:get_string("it2") == "mkgic:mana_wind" then
				if inv:room_for_item("main","mkgic:cryolite") then
					inv:add_item("main","mkgic:cryolite")
					meta:set_int("tinmpasde",0)
				end
			elseif meta:get_string("it1") == "mkgic:pyrolite" and meta:get_string("it2") == "mkgic:mana_wind" then
				if inv:room_for_item("main","mkgic:pyraerialite") then
					inv:add_item("main","mkgic:pyraerialite")
					meta:set_int("tinmpasde",0)
				end
			else
				minetest.add_node(pos,{name="air"})
				minetest.add_node(pos,{name="mkgic:neoligen"})
			end
			return wielded_item
		end
	end
})

minetest.register_craft({
	output = "mkgic:neolite",
	recipe = {
		{"","mkgic:mana_fire",""},
		{"mkgic:mana_the_forest","default:mese_crystal","mkgic:mana_water"},
		{"","mkgic:mana_wind",""}
	}
})

minetest.register_craft({
	output = "mkgic:neoligen",
	recipe = {
		{"mkgic:neolite","mkgic:neolite","mkgic:neolite"},
		{"mkgic:mana_fire","default:mese_crystal","mkgic:mana_water"},
		{"default:stone","default:stone","default:stone"}
	}
})