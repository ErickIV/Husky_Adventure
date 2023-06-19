extends CanvasLayer

func _on_Restart_pressed():
	PlayerStats.health = PlayerStats.max_health
	get_tree().paused = false
	get_tree().change_scene("res://World.tscn")


func _on_MainMenu_pressed():
	get_tree().paused = false
	get_tree().change_scene("res://Menu.tscn")
