dofile(minetest.get_modpath("buglive").."/api.lua")

minetest.register_craftitem("buglive:boxbug", {
	description = "Boxbug",
	inventory_image = "inv_vitr.png",
	
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.above then
			minetest.env:add_entity(pointed_thing.above, "buglive:boxbug")
			itemstack:take_item()
		end
		return itemstack
	end,
})
minetest.register_node('buglive:boxbug', {
	
	drawtype = 'plantlike',
	waving = 0,
	tile_images = { 'vitr.png' },
	inventory_image = 'inv_vitr.png',
	wield_image = 'vitr.png',
	sunlight_propagates = true,
	paramtype = 'light',
	walkable = false,
	groups = { snappy = 3, poisonivy=1, flora_block=1 },
	sounds = default.node_sound_leaves_defaults(),
	buildable_to = true,
})





minetest.register_craft({
	output = "buglive:boxbug",
	recipe = {
		{"buglive:bug", "buglive:bug2", "buglive:bug3"},
		{"buglive:bug4", "buglive:bug5", "buglive:bug6"},
		{"buglive:bug7", "buglive:bug8", "buglive:bug9"},
	},
})

minetest.register_craftitem("buglive:bug", {
	description = "Bug 1",
	inventory_image = "int_bug.png",
	on_use = minetest.item_eat(1),
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.above then
			minetest.env:add_entity(pointed_thing.above, "buglive:bug")
			itemstack:take_item()
		end
		return itemstack
	end,
})

buglive:register_mob("buglive:bug", {
	type = "animal",
	hp_max = 1,
	collisionbox = {-0.2, -0.01, -0.2, 0.2, 0.2, 0.2},
	visual = "mesh",
	mesh = "bug.x",
	textures = {"bug1.png"},
	makes_footstep_sound = false,
	walk_velocity = 1,
	armor = 200,
	drops = {},
	drawtype = "front",
	water_damage = 2,
	lava_damage = 1,
	light_damage = 0,
	
	on_rightclick = function(self, clicker)
		if clicker:is_player() and clicker:get_inventory() then
			clicker:get_inventory():add_item("main", "buglive:bug")
			self.object:remove()
		end
	end,
})
buglive:register_spawn("buglive:bug", {"default:dirt_with_grass", "default:stone"}, 20, -1, 5000, 1, 31000)

minetest.register_craftitem("buglive:bug2", {
	description = "Bug 2",
	inventory_image = "int_bug.png",
	on_use = minetest.item_eat(1),
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.above then
			minetest.env:add_entity(pointed_thing.above, "buglive:bug2")
			itemstack:take_item()
		end
		return itemstack
	end,
})
buglive:register_mob("buglive:bug2", {
	type = "animal",
	hp_max = 1,
	collisionbox = {-0.2, -0.01, -0.2, 0.2, 0.2, 0.2},
	visual = "mesh",
	mesh = "bug.x",
	textures = {"bug2.png"},
	makes_footstep_sound = false,
	walk_velocity = 1,
	armor = 200,
	drops = {},
	drawtype = "front",
	water_damage = 2,
	lava_damage = 1,
	light_damage = 0,
	
	on_rightclick = function(self, clicker)
		if clicker:is_player() and clicker:get_inventory() then
			clicker:get_inventory():add_item("main", "buglive:bug2")
			self.object:remove()
		end
	end,
})
buglive:register_spawn("buglive:bug2", {"default:dirt_with_grass"}, 20, -1, 5000, 1, 31000)

buglive:register_mob("buglive:bug3", {
	type = "animal",
	hp_max = 1,
	collisionbox = {-0.2, -0.01, -0.2, 0.2, 0.2, 0.2},
	visual = "mesh",
	mesh = "bug.x",
	textures = {"bug3.png"},
	makes_footstep_sound = false,
	walk_velocity = 1,
	armor = 200,
	drops = {},
	drawtype = "front",
	water_damage = 2,
	lava_damage = 1,
	light_damage = 0,
	
	on_rightclick = function(self, clicker)
		if clicker:is_player() and clicker:get_inventory() then
			clicker:get_inventory():add_item("main", "buglive:bug3")
			self.object:remove()
		end
	end,
})
buglive:register_spawn("buglive:bug3", {"default:stone"}, 20, -1, 5000, 1, 31000)
minetest.register_craftitem("buglive:bug3", {
	description = "Bug 3",
	inventory_image = "int_bug.png",
	on_use = minetest.item_eat(1),
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.above then
			minetest.env:add_entity(pointed_thing.above, "buglive:bug3")
			itemstack:take_item()
		end
		return itemstack
	end,
})

buglive:register_mob("buglive:bug4", {
	type = "animal",
	hp_max = 1,
	collisionbox = {-0.2, -0.01, -0.2, 0.2, 0.2, 0.2},
	visual = "mesh",
	mesh = "bug.x",
	textures = {"bug4.png"},
	makes_footstep_sound = false,
	walk_velocity = 1,
	armor = 200,
	drops = {},
	drawtype = "front",
	water_damage = 2,
	lava_damage = 1,
	light_damage = 0,
	
	on_rightclick = function(self, clicker)
		if clicker:is_player() and clicker:get_inventory() then
			clicker:get_inventory():add_item("main", "buglive:bug4")
			self.object:remove()
		end
	end,
})
buglive:register_spawn("buglive:bug4", {"default:dirt_with_grass", "default:stone"}, 20, -1, 5000, 1, 31000)
minetest.register_craftitem("buglive:bug4", {
	description = "Bug 4",
	inventory_image = "int_bug.png",
	on_use = minetest.item_eat(1),
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.above then
			minetest.env:add_entity(pointed_thing.above, "buglive:bug4")
			itemstack:take_item()
		end
		return itemstack
	end,
})

buglive:register_mob("buglive:bug5", {
	type = "animal",
	hp_max = 1,
	collisionbox = {-0.2, -0.01, -0.2, 0.2, 0.2, 0.2},
	visual = "mesh",
	mesh = "bug.x",
	textures = {"bug5.png"},
	makes_footstep_sound = false,
	walk_velocity = 1,
	armor = 200,
	drops = {},
	drawtype = "front",
	water_damage = 2,
	lava_damage = 1,
	light_damage = 0,
	
	on_rightclick = function(self, clicker)
		if clicker:is_player() and clicker:get_inventory() then
			clicker:get_inventory():add_item("main", "buglive:bug5")
			self.object:remove()
		end
	end,
})
buglive:register_spawn("buglive:bug5", {"default:dirt_with_grass", "default:stone"}, 20, -1, 5000, 1, 31000)
minetest.register_craftitem("buglive:bug5", {
	description = "Bug 5",
	inventory_image = "int_bug.png",
	on_use = minetest.item_eat(1),
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.above then
			minetest.env:add_entity(pointed_thing.above, "buglive:bug5")
			itemstack:take_item()
		end
		return itemstack
	end,
})

buglive:register_mob("buglive:bug6", {
	type = "animal",
	hp_max = 1,
	collisionbox = {-0.2, -0.01, -0.2, 0.2, 0.2, 0.2},
	visual = "mesh",
	mesh = "bug.x",
	textures = {"bug6.png"},
	makes_footstep_sound = false,
	walk_velocity = 1,
	armor = 200,
	drops = {},
	drawtype = "front",
	water_damage = 2,
	lava_damage = 1,
	light_damage = 0,
	
	on_rightclick = function(self, clicker)
		if clicker:is_player() and clicker:get_inventory() then
			clicker:get_inventory():add_item("main", "buglive:bug")
			self.object:remove()
		end
	end,
})
buglive:register_spawn("buglive:bug6", {"default:dirt_with_grass", "default:stone"}, 20, -1, 5000, 1, 31000)
minetest.register_craftitem("buglive:bug6", {
	description = "Bug 6",
	inventory_image = "int_bug.png",
	on_use = minetest.item_eat(1),
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.above then
			minetest.env:add_entity(pointed_thing.above, "buglive:bug6")
			itemstack:take_item()
		end
		return itemstack
	end,
})

buglive:register_mob("buglive:bug7", {
	type = "animal",
	hp_max = 1,
	collisionbox = {-0.2, -0.01, -0.2, 0.2, 0.2, 0.2},
	visual = "mesh",
	mesh = "bug.x",
	textures = {"bug7.png"},
	makes_footstep_sound = false,
	walk_velocity = 1,
	armor = 200,
	drops = {},
	drawtype = "front",
	water_damage = 2,
	lava_damage = 1,
	light_damage = 0,
	
	on_rightclick = function(self, clicker)
		if clicker:is_player() and clicker:get_inventory() then
			clicker:get_inventory():add_item("main", "buglive:bug7")
			self.object:remove()
		end
	end,
})
buglive:register_spawn("buglive:bug7", {"default:dirt_with_grass", "default:stone"}, 20, -1, 5000, 1, 31000)
minetest.register_craftitem("buglive:bug7", {
	description = "Bug 7",
	inventory_image = "int_bug.png",
	on_use = minetest.item_eat(1),
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.above then
			minetest.env:add_entity(pointed_thing.above, "buglive:bug7")
			itemstack:take_item()
		end
		return itemstack
	end,
})

buglive:register_mob("buglive:bug8", {
	type = "animal",
	hp_max = 1,
	collisionbox = {-0.2, -0.01, -0.2, 0.2, 0.2, 0.2},
	visual = "mesh",
	mesh = "bug.x",
	textures = {"bug8.png"},
	makes_footstep_sound = false,
	walk_velocity = 1,
	armor = 200,
	drops = {},
	drawtype = "front",
	water_damage = 2,
	lava_damage = 1,
	light_damage = 0,
	
	on_rightclick = function(self, clicker)
		if clicker:is_player() and clicker:get_inventory() then
			clicker:get_inventory():add_item("main", "buglive:bug8")
			self.object:remove()
		end
	end,
})
buglive:register_spawn("buglive:bug8", {"default:dirt_with_grass", "default:stone"}, 20, -1, 5000, 1, 31000)
minetest.register_craftitem("buglive:bug8", {
	description = "Bug 8",
	inventory_image = "int_bug.png",
	on_use = minetest.item_eat(1),
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.above then
			minetest.env:add_entity(pointed_thing.above, "buglive:bug8")
			itemstack:take_item()
		end
		return itemstack
	end,
})

buglive:register_mob("buglive:bug9", {
	type = "animal",
	hp_max = 1,
	collisionbox = {-0.2, -0.01, -0.2, 0.2, 0.2, 0.2},
	visual = "mesh",
	mesh = "bug.x",
	textures = {"bug9.png"},
	makes_footstep_sound = false,
	walk_velocity = 1,
	armor = 200,
	drops = {},
	drawtype = "front",
	water_damage = 2,
	lava_damage = 1,
	light_damage = 0,
	
	on_rightclick = function(self, clicker)
		if clicker:is_player() and clicker:get_inventory() then
			clicker:get_inventory():add_item("main", "buglive:bug9")
			self.object:remove()
		end
	end,
})
buglive:register_spawn("buglive:bug9", {"default:desert_sand"}, 20, -1, 5000, 1, 31000)
minetest.register_craftitem("buglive:bug9", {
	description = "Bug 9",
	inventory_image = "int_bug.png",
	on_use = minetest.item_eat(1),
	on_place = function(itemstack, placer, pointed_thing)
		if pointed_thing.above then
			minetest.env:add_entity(pointed_thing.above, "buglive:bug9")
			itemstack:take_item()
		end
		return itemstack
	end,
})


if minetest.setting_get("log_mods") then
	minetest.log("action", "buglive loaded")
end
