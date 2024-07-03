class_name MapGenerator

var grass_block_scene := preload("res://scenes/grass_module.tscn")
var water_block_scene := preload("res://scenes/water_module.tscn")

var presets = MapModulePreset.new()

enum CardinalRotation {North, South, East, West}

func generate_map(size: Vector2i):
	# Step 1: Generate modules with rotation
	var modules = generate_map_modules(size)
	
	var children = []
	
	for i in modules.size():
		for j in modules[i].size():
			var preset = presets.get_module_preset(modules[i][j].map_module)
			var rotation = get_module_rotation(modules[i][j].rotation)
			
			for k in presets.module_size:
				for l in presets.module_size:
					var terrain_type = preset[k][l][0]
					var terrain_height = preset[k][l][1]
					var scene = get_scene(terrain_type)
					
					# Do something with rotation
					var instance = scene.instantiate()
					if(instance is Node3D):
						instance.position = Vector3(
							i * presets.module_size + k,
							terrain_height,
							j * presets.module_size + l,
						)
					children.append(instance)
			
			#var instance = scene.instantiate()
			#if(instance is Node3D):
				#instance.position = Vector3(i * module_size, 0, j * module_size)
				#instance.rotation.y = rotation
			#children.append(instance)
	
	#Step 2: Generate grid terrains
	return children

# Returns an array of arrays of {map_module, rotation}
func generate_map_modules(size: Vector2i) -> Array[Array]:
	# TODO make more random and support bigger modules
	var map: Array[Array] = []
	for i in size.x:
		var col = []
		for j in size.y:
			col.append(
				{
					"map_module": presets.get_random_map_module(),
					"rotation": get_random_map_module_rotation(),
				}
			)
		map.append(col)
	return map
	
func get_random_map_module_rotation() -> CardinalRotation:
	return randi_range(0, CardinalRotation.size() - 1)

func get_module_rotation(rotation: CardinalRotation):
	match rotation:
		CardinalRotation.North:
			return 0
		CardinalRotation.West:
			return PI / 2
		CardinalRotation.South:
			return PI
		CardinalRotation.East:
			return PI * 3 / 2

func get_scene(terrain: MapModulePreset.TerrainType) -> PackedScene:
	match terrain:
		MapModulePreset.TerrainType.Grass:
			return grass_block_scene
		MapModulePreset.TerrainType.Water:
			return water_block_scene
		_:
			return grass_block_scene
