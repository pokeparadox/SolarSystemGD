extends Node2D

export var Radius : float setget setRadius, getRadius
export var Colour : Color setget setColour, getColour
export var Name : String setget setName, getName
export var OrbitalVelocity : float
export var OrbitalDistance : float setget setOrbitalDistance, getOrbitalDistance


func _physics_process(delta: float) -> void:
	var parentPlanet = get_parent()
	if parentPlanet and parentPlanet is Planet:
		self.position = parentPlanet.position

	rotation_degrees += OrbitalVelocity * delta

func setOrbitalDistance(distance: float) -> void:
	$Moon.position += Vector2(distance, 0)

func getOrbitalDistance() -> float:
	return $Moon.position.x

func setRadius(radius: float) -> void:
	$Moon.Radius = radius

func getRadius() -> float:
	return $Moon.Radius

func setColour(colour: Color) -> void:
	$Moon.Colour = colour

func getColour() -> Color:
	return $Moon.Colour


func setName(name: String) -> void:
	$Moon.Name = name

func getName() -> String:
	return $Moon.Name
