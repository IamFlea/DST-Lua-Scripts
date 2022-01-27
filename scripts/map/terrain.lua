-- Update worldtiledefs.lua to keep GROUND definitions in sync

GROUND_NAMES=
{
	    [GROUND.IMPASSABLE] = "Impassible",
		[GROUND.ROAD] = "Road",
	    [GROUND.ROCKY] = "Rocky",
	    [GROUND.DIRT] = "Dirt",
	    [GROUND.SAVANNA] = "Savanna",
		[GROUND.GRASS] = "Grass",
		[GROUND.FOREST] = "Forest",
	    [GROUND.MARSH] = "Marsh",
		[GROUND.WOODFLOOR] = "Wood",
		[GROUND.CHECKER] = "Checkers",
        [GROUND.METEOR] = "Moon",
	    [GROUND.CARPET] = "Carpet",
        [GROUND.SCALE] = "Scale",

		[GROUND.CAVE] = "CAVE",

		[GROUND.FUNGUS] = "FUNGUS",
		[GROUND.FUNGUSRED] = "FUNGUSRED",
		[GROUND.FUNGUSGREEN] = "FUNGUSGREEN",
		[GROUND.FUNGUSMOON] = "FUNGUSMOON",
	    [GROUND.SINKHOLE] = "SINKHOLE",
	    [GROUND.UNDERROCK] = "UNDERROCK",
	    [GROUND.MUD] = "MUD",

		[GROUND.WALL_MARSH] = "WALL_MARSH",
		[GROUND.WALL_FUNGUS] = "WALL_FUNGUS",
	    [GROUND.WALL_ROCKY] = "WALL_ROCKY",
		[GROUND.WALL_DIRT] = "WALL_DIRT",
		[GROUND.WALL_CAVE] = "WALL_CAVE",
	    [GROUND.WALL_SINKHOLE] = "WALL_SINKHOLE",
	    [GROUND.WALL_MUD] = "WALL_MUD",
	    [GROUND.WALL_WOOD] = "WALL_WOOD",

		[GROUND.GROUND_NOISE] = "GROUND_NOISE",
	    [GROUND.CAVE_NOISE] = "CAVE_NOISE",
	    [GROUND.FUNGUS_NOISE] = "FUNGUS_NOISE",

	    [GROUND.LAVAARENA_TRIM] = "LAVAARENA_TRIM",
	    [GROUND.LAVAARENA_FLOOR] = "LAVAARENA_FLOOR",

	    [GROUND.QUAGMIRE_GATEWAY] = "QUAGMIRE_GATEWAY",
	    [GROUND.QUAGMIRE_PEATFOREST] = "QUAGMIRE_PEATFOREST",
	    [GROUND.QUAGMIRE_PARKFIELD] = "QUAGMIRE_PARKFIELD",
	    [GROUND.QUAGMIRE_PARKSTONE] = "QUAGMIRE_PARKSTONE",
	    [GROUND.QUAGMIRE_CITYSTONE] = "QUAGMIRE_CITYSTONE",
	    [GROUND.QUAGMIRE_SOIL] = "QUAGMIRE_SOIL",
}

-- These tiles are flooring (stuff shouldn't grow on them)
GROUND_FLOORING =
{
    [GROUND.WOODFLOOR] = true,
    [GROUND.CARPET] = true,
    [GROUND.CHECKER] = true,
    [GROUND.SCALE] = true,
}

local function OnlyAllow(approved)
	local filter = {}
	for _,v in pairs(GROUND) do
		if not table.contains(approved, v) then
			table.insert(filter, v)
		end
	end
	return filter
end

-- These items will not spawn on a terrain tile of the types in the list provided
local TERRAIN_FILTER=
	{
		berrybush=			{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.MARSH, GROUND.DIRT, GROUND.DESERT_DIRT },
		berrybush2=			{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.MARSH, GROUND.DIRT, GROUND.DESERT_DIRT },
		berrybush_juicy=			{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.MARSH, GROUND.DIRT, GROUND.DESERT_DIRT },
		beefalo=			{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.MARSH},
		beehive=			{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.MARSH},
		wasphive=			{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.MARSH},
		beemine = 			{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER },
		carrot_planted = 	{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.MARSH, GROUND.DIRT, GROUND.DESERT_DIRT, GROUND.SAVANNA },
		evergreen		= 	{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.DIRT, GROUND.DESERT_DIRT },
		pinecone_sapling= 	{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.DIRT, GROUND.DESERT_DIRT },
		evergreen_normal = 	{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.DIRT, GROUND.DESERT_DIRT  },
		evergreen_short = 	{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.DIRT, GROUND.DESERT_DIRT  },
		evergreen_tall = 	{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.DIRT, GROUND.DESERT_DIRT },
		evergreen_sparse = 	{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.DIRT, GROUND.DESERT_DIRT },
		evergreen_sparse_normal = 	{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.DIRT, GROUND.DESERT_DIRT },
		evergreen_sparse_short = 	{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.DIRT, GROUND.DESERT_DIRT },
		evergreen_sparse_tall = 	{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.DIRT, GROUND.DESERT_DIRT },
		twiggytree = 	{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.DIRT, GROUND.DESERT_DIRT },
		twiggy_normal = 	{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.DIRT, GROUND.DESERT_DIRT  },
		twiggy_short = 	{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.DIRT, GROUND.DESERT_DIRT  },
		twiggy_tall = 	{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.DIRT, GROUND.DESERT_DIRT },
		evergreen_burnt = 	{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.DIRT},

		twigs = {GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.DIRT},


		evergreen_stump = 	{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.DIRT},
		deciduoustree = 	{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.DIRT, GROUND.DESERT_DIRT },
		acorn_sapling = 	{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.DIRT, GROUND.DESERT_DIRT },
		deciduoustree_normal = 		{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.DIRT, GROUND.DESERT_DIRT },
		deciduoustree_tall = 		{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.DIRT, GROUND.DESERT_DIRT },
		deciduoustree_short = 		{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.DIRT, GROUND.DESERT_DIRT },
		deciduoustree_burnt = 		{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.DIRT, GROUND.DESERT_DIRT },
		deciduoustree_stump = 		{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.DIRT, GROUND.DESERT_DIRT },
		livingtree = 		{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.DIRT, GROUND.DESERT_DIRT },
		flower = 			{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.MARSH, GROUND.DIRT, GROUND.DESERT_DIRT },
		red_mushroom = 		{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.MARSH, GROUND.DIRT, GROUND.DESERT_DIRT },
		green_mushroom = 	{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.MARSH, GROUND.DIRT, GROUND.DESERT_DIRT },
		blue_mushroom = 	{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.MARSH, GROUND.DIRT, GROUND.DESERT_DIRT },
		flint = 			{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.METEOR },
		fireflies = 		{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER },
		grass = 			{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.DIRT, GROUND.DESERT_DIRT, GROUND.METEOR },
		depleted_grass =	{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.DIRT, GROUND.DESERT_DIRT },
		gravestone = 		{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER },
		firepit =  		    {GROUND.ROAD},
		log = 				{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER },
		mandrake = 			{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER },
		marsh_bush = 		{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY },
		marsh_tree = 		{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY },
		pighouse =			{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER },
		pigman =			{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER },
		mermhouse =			{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER },
		pond = 				{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY },
		pond_mos = 			{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY },
		reeds = 			{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.METEOR },
		rock1 = 			{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.METEOR },
		rock2 = 			{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.METEOR },
		rock_ice = 			{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER },
		rock_moon =			{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.METEOR, GROUND.GRASS, GROUND.FOREST },
		rock_flintless =	{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER },
		rock_petrified_tree = {GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER },
		basalt = 			{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER },
		houndbone = 		{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER },
		houndmound = 		{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER },
		catcoonden = 		{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER },
		basalt_pillar =		{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER },
		rocks = 			{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.QUAGMIRE_PARKFIELD },
		rabbithole=			{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.MARSH},
		molehill=			{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.MARSH},
		sapling=			{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.MARSH, GROUND.QUAGMIRE_PARKSTONE },
		spiderden = 		{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER },
		spiderden_2 = 		{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER },
		spiderden_3 = 		{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER },
		tallbirdnest = 		{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER },
		tentacle=			{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.GRASS, GROUND.FOREST, GROUND.SAVANNA},
		trap_teeth = 		{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER },
		marbletree =		{GROUND.ROAD},
		marblestatue =		{GROUND.ROAD},

		stagehand = 		{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.MARSH, GROUND.DIRT, GROUND.DESERT_DIRT, GROUND.SAVANNA },
		moonbase = 			{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.MARSH, GROUND.DIRT, GROUND.DESERT_DIRT, GROUND.SAVANNA },
		beequeenhive =		{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.MARSH, GROUND.DIRT, GROUND.DESERT_DIRT, GROUND.SAVANNA, GROUND.FOREST },
		critterlab =		{GROUND.ROAD, GROUND.GRASS, GROUND.FOREST, GROUND.SAVANNA, GROUND.MARSH },
		deerspawningground= {GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.SAVANNA, GROUND.MARSH },

		toadstool_cap =		OnlyAllow({GROUND.ROCKY}),

		monkeybarrel_spawner =		OnlyAllow({GROUND.MUD, GROUND.CAVE_NOISE}),
		slurper_spawner =			OnlyAllow({GROUND.MUD, GROUND.CAVE_NOISE}),
		worm_spawner =				OnlyAllow({GROUND.TILES, GROUND.TILES_GLOW, GROUND.TRIM, GROUND.TRIM_GLOW, GROUND.CAVE, GROUND.MUD, GROUND.CAVE_NOISE}),

		cave_hole =			OnlyAllow({GROUND.TILES, GROUND.TILES_GLOW, GROUND.TRIM, GROUND.TRIM_GLOW, GROUND.CAVE, GROUND.MUD, GROUND.CAVE_NOISE, GROUND.UNDERROCK}),

		driftwood_log =			{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.METEOR },
		driftwood_tall = 		OnlyAllow({GROUND.PEBBLEBEACH, GROUND.DIRT}),
		driftwood_small1 = 		OnlyAllow({GROUND.PEBBLEBEACH, GROUND.DIRT}),
		driftwood_small2 = 		OnlyAllow({GROUND.PEBBLEBEACH, GROUND.DIRT}),
		dead_sea_bones = 		OnlyAllow({GROUND.PEBBLEBEACH, GROUND.DIRT}),
		trap_starfish =			OnlyAllow({GROUND.PEBBLEBEACH, GROUND.MARSH}),
		moonglass_rock = 		OnlyAllow({GROUND.METEOR}),
		moonrocknugget =		{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER },
		moon_tree = 			{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.DIRT, GROUND.DESERT_DIRT },
		moon_tree_short = 		{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.DIRT, GROUND.DESERT_DIRT },
		moon_tree_normal = 		{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.DIRT, GROUND.DESERT_DIRT },
		moon_tree_tall = 		{GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.DIRT, GROUND.DESERT_DIRT },
		moon_fissure =			OnlyAllow({GROUND.METEOR}),
		bullkelp_beachedroot =  {GROUND.ROAD, GROUND.WOODFLOOR, GROUND.SCALE, GROUND.CARPET, GROUND.CHECKER, GROUND.ROCKY, GROUND.DIRT, GROUND.DESERT_DIRT, GROUND.METEOR },

		flower_cave =			{GROUND.FUNGUSMOON},
		mushtree_tall =			{GROUND.FUNGUSMOON},
		lightflier_flower =		{GROUND.FUNGUS, GROUND.FUNGUSRED, GROUND.FUNGUSGREEN},
		mushtree_moon =			{GROUND.FUNGUS, GROUND.FUNGUSRED, GROUND.FUNGUSGREEN, GROUND.DIRT},

		-- quagmire ground types: GROUND.QUAGMIRE_GATEWAY, GROUND.QUAGMIRE_PEATFOREST, GROUND.QUAGMIRE_PARKFIELD, GROUND.QUAGMIRE_PARKSTONE, GROUND.QUAGMIRE_CITYSTONE, GROUND.QUAGMIRE_SOIL
		quagmire_sugarwoodtree = OnlyAllow({GROUND.QUAGMIRE_PARKFIELD}),
		quagmire_sugarwoodtree_small = OnlyAllow({GROUND.QUAGMIRE_PARKFIELD}),
		quagmire_sugarwoodtree_normal = OnlyAllow({GROUND.QUAGMIRE_PARKFIELD}),
		quagmire_sugarwoodtree_tall = OnlyAllow({GROUND.QUAGMIRE_PARKFIELD}),
		quagmire_spotspice_shrub = OnlyAllow({GROUND.QUAGMIRE_PARKFIELD}),
		quagmire_rock = OnlyAllow({GROUND.ROCKY, GROUND.QUAGMIRE_PARKSTONE, GROUND.QUAGMIRE_CITYSTONE}),
		quagmire_lamp_post = OnlyAllow({GROUND.QUAGMIRE_PARKSTONE, GROUND.QUAGMIRE_CITYSTONE}),
		quagmire_pond_park = OnlyAllow({GROUND.QUAGMIRE_PARKFIELD}),
		quagmire_fern = OnlyAllow({GROUND.QUAGMIRE_PARKFIELD}),
	}

-- nothing can grow on these tiles:
for terrain, tiles in pairs(TERRAIN_FILTER) do
	table.insert(tiles, GROUND.ARCHIVE)
end

TERRAIN_FILTER.Print = function (filter)
	local val = ""
	for i,v in ipairs(filter) do
		val = val .." ".. GROUND_NAMES[v]
	end
	return val
end

-- gjans: Rooms should be tweaked from mods using the AddRoomPreInit function now. Preserving backwards compatability here, but with a warning.
local Rooms = require("map/rooms")
local old_rooms = {}
local old_rooms_mt = {}
old_rooms_mt.__index = function(table, key)
    moderror(string.format("Accessing 'terrain.rooms' directly is being deprecated, please use AddRoomPreInit(\"%s\") instead!", key ))
    return Rooms.GetRoomByName(key)
end
setmetatable(old_rooms, old_rooms_mt)

terrain={rooms=old_rooms, filter=TERRAIN_FILTER}
