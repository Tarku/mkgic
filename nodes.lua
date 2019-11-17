-- Neolite Ore --
minetest.register_node("mkgic:neolite_ore",{
	description = "Neolite Ore",
	tiles = {"default_stone.png^mkgic_mineral_neolite.png"},
	groups = {cracky = 2},
	drop = "",
	on_punch = function(pos, node, player, pointed_thing)
		minetest.registered_nodes["mkgic:neolite_ore"].drop = "mkgic:neolite "..math.random(1,4)
	end
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "mkgic:neolite_ore",
	wherein = "default:stone",
	clust_scarcity = 12*12*12,
	clust_num_ores = 2,
	clust_size = 3,
	y_min = -10,
	y_max = -1,
	flags = "absheight",
	noise_params = {
		offset = 0,
		scale = 1,
		spread = {x = 100, y = 100, z = 100},
		seed = 421,
		octaves = 3,
		persist = 0.7
	},
	noise_threshold = 1,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "mkgic:neolite_ore",
	wherein = "default:stone",
	clust_scarcity = 10*10*10,
	clust_num_ores = 2,
	clust_size = 3,
	y_min = -100,
	y_max = -10,
	flags = "absheight",
	noise_params = {
		offset = 0,
		scale = 1,
		spread = {x = 80, y = 80, z = 80},
		seed = 421,
		octaves = 3,
		persist = 0.7
	},
	noise_threshold = 1/10,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "mkgic:neolite_ore",
	wherein = "default:stone",
	clust_scarcity = 8*8*8,
	clust_num_ores = 2,
	clust_size = 3,
	y_min = -1000,
	y_max = -100,
	flags = "absheight",
	noise_params = {
		offset = 0,
		scale = 1,
		spread = {x = 64, y = 64, z = 64},
		seed = 421,
		octaves = 3,
		persist = 0.7
	},
	noise_threshold = 1/100,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "mkgic:neolite_ore",
	wherein = "default:stone",
	clust_scarcity = 6*6*6,
	clust_num_ores = 2,
	clust_size = 3,
	y_min = -10000,
	y_max = -1000,
	flags = "absheight",
	noise_params = {
		offset = 0,
		scale = 1,
		spread = {x = 51, y = 51, z = 51},
		seed = 421,
		octaves = 3,
		persist = 0.7
	},
	noise_threshold = 1/200,
})

minetest.register_ore({
	ore_type = "scatter",
	ore = "mkgic:neolite_ore",
	wherein = "default:stone",
	clust_scarcity = 5*5*5,
	clust_num_ores = 2,
	clust_size = 3,
	y_min = -31000,
	y_max = -10000,
	flags = "absheight",
	noise_params = {
		offset = 0,
		scale = 1,
		spread = {x = 40, y = 40, z = 40},
		seed = 421,
		octaves = 3,
		persist = 0.7
	},
	noise_threshold = 1/400,
})

-- Neostone --
minetest.register_node("mkgic:neostone",{
	description = "Neostone",
	tiles = {"mkgic_neostone.png"},
	groups = {cracky = 2}
})

minetest.register_craft({
	output = "mkgic:neostone",
	recipe = {
		{"default:stone","default:stone","default:stone"},
		{"default:stone","mkgic:neolite","default:stone"},
		{"default:stone","default:stone","default:stone"}
	}
})