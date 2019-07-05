extends KinematicBody2D

export (int) var speed = 100 # vitesse du poulet
var velocity = Vector2() # position du poulet
var alive = true

# Les Touches pour deplacer le poulet
func control():
	velocity = Vector2()
	if Input.is_action_pressed("haut"):
		velocity.y -= 1
		$Sprite.set_frame(1)
	if Input.is_action_pressed("bas"):
		velocity.y += 1
		$Sprite.set_frame(7)
	if Input.is_action_pressed("gauche"):
		velocity.x -= 1
		$Sprite.set_frame(10)
	if Input.is_action_pressed("droite"):
		velocity.x += 1
		$Sprite.set_frame(4)
	if Input.is_action_just_pressed("courir"):
		speed = 150
	if Input.is_action_just_pressed("marcher"):
		speed = 100
	velocity = velocity.normalized() * speed

# les mouvements du poulet
func _physics_process(delta):
	if not alive:
		$Sprite.set_frame(3)
		$CollisionShape2D.disabled = true
		return
	for i in get_slide_count():
		alive = false
	control()
	move_and_slide(velocity)
	
