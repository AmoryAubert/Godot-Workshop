extends Area2D

var taken = false
var score = 0

func _on_body_enter( body ):
	if not taken and body is preload("res://poulet.gd"):
		$anim.play("taken")
		Score.score += 1
		taken = true

func _on_coin_area_enter(area):
	pass # replace with function body

func _on_coin_area_enter_shape(area_id, area, area_shape, area_shape):
	pass # replace with function body
