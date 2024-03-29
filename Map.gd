extends Node2D

func _ready():
	set_camera_limits()

func set_camera_limits():
	var map_limits = $Ground.get_used_rect()
	var map_cellsize = $Ground.cell_size
	$Poulet/Camera2D.limit_left = map_limits.position.x * map_cellsize.x
	$Poulet/Camera2D.limit_right = map_limits.end.x * map_cellsize.x
	$Poulet/Camera2D.limit_top = map_limits.position.y * map_cellsize.y
	$Poulet/Camera2D.limit_bottom = map_limits.end.y * map_cellsize.y
	
func _process(delta):
	$ScoreLayer/ScoreLabel.text = str(Score.score)
	if not $Poulet.alive:
		$GameOverLayer/RichTextLabel.show()