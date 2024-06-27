extends Node3D

enum MapModule {Grass, Mountain, Pond}
enum GridTerrain {Grass, Water}

var grass_module_scene := preload("res://scenes/grass_module.tscn")
var mountain_module_scene := preload("res://scenes/mountain_module.tscn")
var pond_module_scene := preload("res://scenes/pond_module.tscn")

const module_size := 8

func _ready():
	generate_map(Vector2i(3, 3))

func generate_map(size: Vector2i):
	# Step 1: Generate modules with rotation
	var modules = generate_map_modules(size)
	
	print(str(modules))
	
	for i in modules.size():
		for j in modules[i].size():
			var scene = get_module_scene(modules[i][j].map_module)
			var rotation = get_module_rotation(modules[i][j].rotation)
			
			var instance = scene.instantiate()
			add_child(instance)
			if(instance is Node3D):
				instance.position = Vector3(i * module_size, 0, j * module_size)
				instance.rotation.y = rotation
	
	#Step 2: Generate grid terrains
	pass

# Returns an array of arrays of {map_module, rotation}
func generate_map_modules(size: Vector2i) -> Array[Array]:
	# TODO make more random and support bigger modules
	var map: Array[Array] = []
	for i in size.x:
		var col = []
		for j in size.y:
			col.append(
				{
					"map_module": get_random_map_module(),
					"rotation": get_random_map_module_rotation(),
				}
			)
		map.append(col)
	return map
	
func get_random_map_module_rotation() -> UtilEnums.CardinalRotation:
	return randi_range(0, UtilEnums.CardinalRotation.size() - 1)
	
func get_random_map_module() -> MapModule:
	return randi_range(0, MapModule.size() -1)

func get_module_scene(module: MapModule):
	match module:
		MapModule.Grass:
			return grass_module_scene
		MapModule.Pond:
			return pond_module_scene
		MapModule.Mountain:
			return mountain_module_scene

func get_module_rotation(rotation: UtilEnums.CardinalRotation):
	match rotation:
		UtilEnums.CardinalRotation.North:
			return 0
		UtilEnums.CardinalRotation.West:
			return PI / 2
		UtilEnums.CardinalRotation.South:
			return PI
		UtilEnums.CardinalRotation.East:
			return PI * 3 / 2
