extends Node2D
class_name Circle

export var Radius : float = 4.0
export var Colour = Color.white


func _draw():
	draw_circle(self.position, Radius, Colour)
