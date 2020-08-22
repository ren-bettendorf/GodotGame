extends TextureRect

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	var attacked = get_tree().get_root().find_node("AttackButton",true,false)
	attacked.connect("somedeath", self, "handleDeath")
	pass # Replace with function body.

func handleDeath():
	if GlobalVariables.current_hp < 1:
		print_debug("PLAYER DEATH")
		visible = false
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
