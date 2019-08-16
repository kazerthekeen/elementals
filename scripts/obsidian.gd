extends StaticBody2D
export var fire =10
export var water = 10
export var earth = 10
export var air = 10

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
func check_charge():
	if fire != water or fire != earth or fire!= air :
		$Timer.start()
		
	var val = max(fire, water)
	val = max(val, air)
	val = max(val, earth)
	
	match val : 
		fire: 
			$Sprite.modulate(COLOR_FIRE)
		water: 
			$Sprite.modulate(COLOR_WATER)
		earth: 
			$Sprite.modulate(COLOR_EARTH)
		air:
			$Sprite.modulate(COLOR_AIR)
		_:
			pass
	
func elemental_charge(dict):
	fire += dict["fire"]/10
	water += dict["water"]/10
	earth += dict["earth"]/10
	air += dict["air"]/10
	self.check_charge()


func _on_Timer_timeout():
	pass # Replace with function body.
