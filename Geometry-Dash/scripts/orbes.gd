extends Area2D

@export var tipo  = 0
@onready var sprite = $Sprite2D
var fuerza = 0
var invertir = false

func _ready():
	""" 
	0 = pink
	1 = yellow
	2 = blue 
	3 = red 
	4 = green 
	5 = black
	"""
	match tipo :
		0:
			fuerza = -600
			sprite.texture = load("res://imagenes/MagentaJumpRing.webp")
		1:
			fuerza = 1200
			sprite.texture = load("res://imagenes/YellowJumpRing.webp")
		3:
			fuerza = 1800
			sprite.texture = load("res://imagenes/RedJumpRing.webp")
		4:
			fuerza = 800
			invertir = true
			sprite.texture = load("res://imagenes/GreenGravityRing.webp")
		5:
			fuerza = -2000
			invertir = true
			sprite.texture = load("res://imagenes/BlackGravityRing.webp")
		_:
			fuerza = 0
			sprite.texture = load("res://imagenes/cube.png")
			
			
