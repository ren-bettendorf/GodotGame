extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var image = Image.new()
	if GlobalVariables.current_hp < 1:
		print_debug("LOADED WITH ENEMY VICTORY")
		image.load("res://Assets/rat.jpg")
		image.resize(260, 260)
		$CanvasLayer2/TextLabel.text = "YOU LOST! NO ALE FOR ANYONE!!"
	else:
		print_debug("LOADED WITH PLAYER VICTORY")
		image.load("res://Assets/player.png")
		if GlobalVariables.turn_count > 10:
			$CanvasLayer2/TextLabel.text = "YOU WON... But while you were fighting the patrons got angry and burned down the bar"
		else:
			$CanvasLayer2/TextLabel.text = "YOU WON! ALE FOR EVERYONE!!"
	
	var texture = ImageTexture.new()
	texture.create_from_image(image, 7)
	$CanvasLayer/FinalSceneImage.texture = texture
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
