extends Button
signal somedeath
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var ratImage

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_AttackButton_pressed():
	GlobalVariables._attack()
	if GlobalVariables.current_hp < 1 or GlobalVariables.enemy_hp < 1:
		emit_signal("somedeath")
		var err = get_tree().change_scene(GlobalVariables.final_scene)
		if err != OK:
			print_debug("Could not load scene")
		else:
			print_debug("Loaded Tavern Cellar")
	pass # Replace with function body.
