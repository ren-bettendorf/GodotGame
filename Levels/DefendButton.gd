extends Button

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_DefendButton_pressed():
	GlobalVariables._defend()
	get_tree().get_root().find_node("ShieldEffect", true, false).play()
	pass # Replace with function body.
