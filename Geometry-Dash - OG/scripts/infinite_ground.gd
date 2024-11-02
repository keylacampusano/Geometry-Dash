extends StaticBody2D

@onready var jugador = get_node("../CharacterBody2D")

func _process(delta):
	position.x = jugador.position.x
	$Sprite2D.region_rect.position.x += (jugador.SPEED / 60) * delta
