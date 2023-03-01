extends Node2D

@export var Radius : float : get = getRadius, set = setRadius
@export var Colour : Color : get = getColour, set = setColour
@export var Name : String : get = getName, set = setName
@export var OrbitalVelocity : float
@export var OrbitalDistance : float : get = getOrbitalDistance, set = setOrbitalDistance


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
