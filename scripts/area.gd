extends Area2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	for enemy in get_tree().get_nodes_in_group("enemies"):
		if enemy in self.get_overlapping_bodies():
			pass
		else:
			enemy.remove()
