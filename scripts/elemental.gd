extends KinematicBody2D

# Declare member variables here. Examples:
export var elements = {"fire": 0, "water": 0, "earth": 0, "air":0}


# Called when the node enters the scene tree for the first time.
func _ready(dict = {}):
	if dict.has("fire"):
		elements["fire"] = dict["fire"]
	if dict.has("water"):
		elements["water"] = dict["water"]
	if dict.has("earth"):
		elements["earth"] = dict["earth"]
	if dict.has("air"):
		elements["air"] = dict["air"]
	
func remove():
	self.queue_free()

func attack():
	pass

func ondeath():
	for node in $Area2D.get_overlapping_bodies():
		if node.has_method("elemental_charge"):
			node.elemental_charge(elements)
	$AnimationPlayer.play("discharge")

func _on_AnimationPlayer_animation_finished(anim_name):
	match anim_name:
		"charge":
			attack()
		_:
			pass
