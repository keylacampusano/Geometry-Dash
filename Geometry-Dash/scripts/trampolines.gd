extends Area2D

@export var tipo = 0
@onready var sprite = $Sprite2D
var fuerza = 0
var invertir = false

func _ready():
	""" 
	0 = Pink Jump Ring
	1 = Yellow Jump Ring
	3 = Blue Jump Ring
	4 = Red Gravity Ring
	5 = Black Gravity Ring
	"""
	match tipo:
		0:
			fuerza = -600  # Downward force
			sprite.texture = load("res://imagenes/Purple_Pad.webp")
		1:
			fuerza = 1200  # Upward force
			sprite.texture = load("res://imagenes/Yellow_Pad.webp")
		3:
			fuerza = 1800  # Strong upward force
			sprite.texture = load("res://imagenes/Blue_Pad.webp")
		4:
			fuerza = 800  # Upward force with gravity inversion
			invertir = true
			sprite.texture = load("res://imagenes/Red_Pad2.webp")
		_:
			fuerza = 0  # No force
			sprite.texture = load("res://imagenes/cube.png")
