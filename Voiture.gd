extends KinematicBody2D

onready var parent = get_parent()

export (int) var speed = 300
var velocity = Vector2()

func control(delta):
	if parent is PathFollow2D:
		parent.set_offset(parent.get_offset() + speed * delta)
		position = Vector2()
	else:
		pass

func _physics_process(delta):
	control(delta)
	move_and_slide(velocity)
