extends StaticBody2D

var time = 0.0

# Called when the node enters the scene tree for the first time.
func _ready():
	time = randf()*10
	

func _on_Timer_timeout():
	pass # Replace with function body.
