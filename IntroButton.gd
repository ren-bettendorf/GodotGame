extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var next_scene = GlobalVariables.tavern_cellar

# Called when the node enters the scene tree for the first time.
func _ready():
	print_debug("NEXT SCENE: " + next_scene)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_Button_pressed():
	print_debug("NEXT SCENE: " + next_scene)
	var err = get_tree().change_scene(next_scene)
	if err != OK:
		print_debug("Could not load scene")
	else:
		print_debug("Loaded Tavern Cellar")
	pass # Replace with function body.
