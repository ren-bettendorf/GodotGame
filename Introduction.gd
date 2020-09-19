extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	$CanvasLayer2/Button.next_scene = GlobalVariables.tavern_cellar
	print_debug("LOADED INTRODUCTION")
	pass # Replace with function body.
