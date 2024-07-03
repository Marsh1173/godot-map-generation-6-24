extends CharacterBody3D

@onready var nav_agent := $NavigationAgent3D

const SPEED := 3

func _physics_process(delta):
	var current_location = global_transform.origin
	var next_location = nav_agent.get_next_path_position()
	var new_velocity = (next_location - current_location).normalized() * SPEED
	
	velocity = new_velocity
	move_and_slide()

func update_target_location(target_location: Vector3):
	nav_agent.target_position = target_location

var pos_toggle = false

func _input(event):
	if event is InputEventMouseButton and event.is_pressed():
		match event.button_index:
			MOUSE_BUTTON_LEFT:
				if(pos_toggle):
					update_target_location(Vector3(1, 0, 1))
					pos_toggle = false
				else:
					update_target_location(Vector3(20, 0, 20))
					pos_toggle = true
