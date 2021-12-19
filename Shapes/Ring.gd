extends Node2D
class_name Ring

export var Radius : float = 4.0
export var Colour = Color.white
export var Thickness: float = 0.1


func _draw():
	draw_arc(self.position, Radius, 0, 360, int(Radius*12), Colour, Thickness)

