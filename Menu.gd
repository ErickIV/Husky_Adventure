extends Control

func _ready():
	$Control/Menu/StartButton.grab_focus()
	
func _on_StartButton_pressed():
	PlayerStats.health = PlayerStats.max_health
	get_tree().paused = false
	get_tree().change_scene("res://World.tscn")

#func _on_OptionButton_pressed():
#	var options = load("res://Menus/Options.tscn").instance()
#	get tree(). current scene.add child(options)
	
func _on_QuitButton_pressed():
	get_tree().quit()
