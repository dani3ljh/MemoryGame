extends Node3D

@export var endRot := -180
@export var startRot := 0
@export var lerpWeight := 7

var endRotRads := deg_to_rad(endRot)
var startRotRads := deg_to_rad(startRot)

var isAtStart := true

func _process(delta):
	if Input.is_action_just_pressed("test") or Input.is_action_just_pressed("ui_accept"):
		isAtStart = not isAtStart
	
	rotation.y = lerp_angle(rotation.y, endRotRads if isAtStart else startRotRads, lerpWeight * delta)
