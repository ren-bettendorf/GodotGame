extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_StaffButton_pressed():
	visible = true
	pass # Replace with function body.


func _on_AxeButton_pressed():
	visible = true
	pass # Replace with function body.


func _on_SwordButton_pressed():
	visible = true
	pass # Replace with function body.


func _on_VerifyWeaponButton_pressed():
	var err = get_tree().change_scene(GlobalVariables.fight_scene)
	if err != OK:
		print_debug("Could not load scene")
	else:
		print_debug("Loaded FIGHT SCENE")
	pass # Replace with function body.
