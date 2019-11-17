function register_mana(name,craft)
	nam = string.lower(name)
	nam = string.gsub(nam," ","_")
	id = "mkgic:mana_"..nam
	ii = "mkgic_mana_"..nam..".png"
	minetest.register_craftitem(id,{
		description = "Mana of "..name,
		inventory_image = ii
	})
	if craft ~= nil then
		minetest.register_craft({
			output = id,
			type = "shapeless",
			recipe = craft
		})
	end
end
minetest.register_alias("mkgic:mana_forest","mkgic:mana_the_forest")
minetest.register_node("mkgic:hydromenia",{
	description = "Hydromenia Flower",
	inventory_image = "mkgic_flower_hydromenia.png",
	wield_image = "mkgic_flower_hydromenia.png",
	tiles = {"mkgic_flower_hydromenia.png"},
	drawtype = "plantlike",
	light_source = 3,
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	buildable_to = true,
	groups = {oddly_breakable_by_hand = 3, flammable = 3, snappy = 3, mkgic_flower_water = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-2/16, -0.5, -2/16, 2/16, 5/16, 2/16},
	}	
})
minetest.register_node("mkgic:pyrophyllas",{
	description = "Pyrophyllas Flower",
	inventory_image = "mkgic_flower_pyrophyllas.png",
	wield_image = "mkgic_flower_pyrophyllas.png",
	tiles = {"mkgic_flower_pyrophyllas.png"},
	drawtype = "plantlike",
	sunlight_propagates = true,
	paramtype = "light",
	light_source = 8,
	walkable = false,
	buildable_to = true,
	groups = {oddly_breakable_by_hand = 3, flammable = 3, snappy = 3, mkgic_flower_fire = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-2/16, -0.5, -2/16, 2/16, 5/16, 2/16},
	}	
})
minetest.register_node("mkgic:anemanthia",{
	description = "Anemanthia Flower",
	inventory_image = "mkgic_flower_anemanthia.png",
	wield_image = "mkgic_flower_anemanthia.png",
	tiles = {"mkgic_flower_anemanthia.png"},
	drawtype = "plantlike",
	sunlight_propagates = true,
	paramtype = "light",
	light_source = 3,
	walkable = false,
	buildable_to = true,
	groups = {oddly_breakable_by_hand = 3, flammable = 3, snappy = 3, mkgic_flower_wind = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-2/16, -0.5, -2/16, 2/16, 5/16, 2/16},
	}	
})
minetest.register_node("mkgic:geoctaea",{
	description = "Geoctaea Flower",
	inventory_image = "mkgic_flower_geoctaea.png",
	wield_image = "mkgic_flower_geoctaea.png",
	tiles = {"mkgic_flower_geoctaea.png"},
	drawtype = "plantlike",
	sunlight_propagates = true,
	light_source = 3,
	paramtype = "light",
	walkable = false,
	buildable_to = true,
	groups = {oddly_breakable_by_hand = 3, flammable = 3, snappy = 3, mkgic_flower_earth = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-2/16, -0.5, -2/16, 2/16, 5/16, 2/16},
	}	
})
minetest.register_node("mkgic:phylloverde",{
	description = "Phylloverde Flower",
	inventory_image = "mkgic_flower_phylloverde.png",
	wield_image = "mkgic_flower_phylloverde.png",
	tiles = {"mkgic_flower_phylloverde.png"},
	drawtype = "plantlike",
	sunlight_propagates = true,
	paramtype = "light",
	walkable = false,
	buildable_to = true,
	groups = {oddly_breakable_by_hand = 3, flammable = 3, snappy = 3, mkgic_flower_forest = 1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-2/16, -0.5, -2/16, 2/16, 5/16, 2/16},
	}	
})
register_mana("Fire",{"mkgic:pyrophyllas"})
register_mana("Water",{"mkgic:hydromenia"})
register_mana("Wind",{"mkgic:anemanthia"})
register_mana("Earth",{"mkgic:geoctaea"})
register_mana("the Forest",{"mkgic:phylloverde"})
register_mana("the Fire Tempest",nil)
register_mana("the Grass Fury",nil)
register_mana("the Ice Wrath",nil)
register_mana("the Clay Angery",nil)

minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.001,
		spread = {x=500,y=10,z=400},
	},
	y_min = -31000,
	y_max = 31000,
	decoration = "mkgic:geoctaea"
}) 
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:water_source"},
	sidelen = 10,
	noise_params = {
		offset = 0,
		scale = 0.005,
		spread = {x=800,y=10,z=800},
	},
	y_min = -31000,
	y_max = 31000,
	decoration = "mkgic:hydromenia"
}) 
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:stone"},
	sidelen = 10,
	noise_params = {
		offset = 0,
		scale = 0.0005,
		spread = {x=500,y=10,z=500},
	},
	y_min = -31000,
	y_max = -100,
	decoration = "mkgic:pyrophyllas"
}) 
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 10,
	noise_params = {
		offset = 0,
		scale = 0.005,
		spread = {x=700,y=10,z=800},
	},
	y_min = 10,
	y_max = 31000,
	decoration = "mkgic:phylloverde"
}) 
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_snow","default:snowblock","default:ice"},
	sidelen = 10,
	noise_params = {
		offset = 0,
		scale = 0.01,
		spread = {x=700,y=10,z=800},
	},
	y_min = -10,
	y_max = 31000,
	decoration = "mkgic:anemanthia"
}) 
