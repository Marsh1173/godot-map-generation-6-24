class_name MapModulePreset

enum ModuleType {Grass, Mountain, Pond}
enum TerrainType {Grass, Water}

const module_size := 8

func get_module_preset(t: ModuleType) -> Array[Array]:
	match t:
		ModuleType.Grass:
			return Grass
		ModuleType.Pond:
			return Pond
		ModuleType.Mountain:
			return Mountain
		_:
			return Grass

func get_random_map_module() -> MapModulePreset.ModuleType:
	return randi_range(0, MapModulePreset.ModuleType.size() -1)

const Grass: Array[Array] = [
	[
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
	],
	[
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
	],
	[
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
	],
	[
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
	],
	[
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
	],
	[
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
	],
	[
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
	],
	[
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
	],
]

const Mountain: Array[Array] = [
	[
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
	],
	[
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 3],
		[TerrainType.Grass, 3],
		[TerrainType.Grass, 3],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
	],
	[
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 3],
		[TerrainType.Grass, 3],
		[TerrainType.Grass, 3],
		[TerrainType.Grass, 3],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
	],
	[
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 3],
		[TerrainType.Grass, 3],
		[TerrainType.Grass, 4],
		[TerrainType.Grass, 4],
		[TerrainType.Grass, 3],
		[TerrainType.Grass, 3],
		[TerrainType.Grass, 2],
	],
	[
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 3],
		[TerrainType.Grass, 4],
		[TerrainType.Grass, 3],
		[TerrainType.Grass, 3],
		[TerrainType.Grass, 3],
		[TerrainType.Grass, 2],
	],
	[
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 3],
		[TerrainType.Grass, 3],
		[TerrainType.Grass, 3],
		[TerrainType.Grass, 3],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
	],
	[
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 3],
		[TerrainType.Grass, 3],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
	],
	[
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
	],
]

const Pond: Array[Array] = [
	[
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
	],
	[
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
	],
	[
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Water, 2],
		[TerrainType.Water, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
	],
	[
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Water, 2],
		[TerrainType.Water, 2],
		[TerrainType.Water, 2],
		[TerrainType.Water, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
	],
	[
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Water, 2],
		[TerrainType.Water, 2],
		[TerrainType.Water, 2],
		[TerrainType.Water, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
	],
	[
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Water, 2],
		[TerrainType.Water, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
	],
	[
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
	],
	[
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
		[TerrainType.Grass, 2],
	],
]
