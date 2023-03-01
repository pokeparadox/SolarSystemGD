extends Node2D

@export var Radius : float : get = getRadius, set = setRadius
@export var Colour : Color : get = getColour, set = setColour
@export var Name : String : get = getName, set = setName
@export var OrbitalVelocity : float
@export var OrbitalDistance : float : get = getOrbitalDistance, set = setOrbitalDistance


func _physics_process(delta: float) -> void:
	self.rotation_degrees += OrbitalVelocity * delta

func setOrbitalDistance(distance: float) -> void:
	$Planet.position += Vector2(distance, 0)

func getOrbitalDistance() -> float:
	return $Planet.position.x

func setRadius(radius: float) -> void:
	$Planet.Radius = radius

func getRadius() -> float:
	return $Planet.Radius

func setColour(colour: Color) -> void:
	$Planet.Colour = colour

func getColour() -> Color:
	return $Planet.Colour


func setName(name: String) -> void:
	$Planet.Name = name

func getName() -> String:
	return $Planet.Name
