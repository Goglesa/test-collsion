extends Node2D

const SPEED = 15

var direction = 1

@onready var ray_castleft = $RayCastleft
@onready var ray_castright = $RayCastright

func _process(delta):
	if ray_castleft.is_colliding():
		direction = -1
	if ray_castright.is_colliding():
		direction = 1
	
	position.x += direction * SPEED * delta
