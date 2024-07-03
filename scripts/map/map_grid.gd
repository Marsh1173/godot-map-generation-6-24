extends Node
class_name MapGrid

var generator = MapGenerator.new()

const map_size := Vector2i(3, 3)

func _ready():
	var blocks = generator.generate_map(map_size)
	for block in blocks:
		add_child(block)

#var size: Vector2
#
## GridTile[][]
#var gridmap: Array[Array] = []
#
#func _init(_size: Vector2i):
	#size = _size
	#
	#for i in size.x:
		#gridmap.append(Array([] )
	#gridmap.
#
