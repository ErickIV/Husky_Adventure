extends Node

const CreatureScene = preload("res://Enemies/SpawnBat.tscn")

func spawn_creature(at_position):
	var new_creature = CreatureScene.instance()
	get_tree().get_root().add_child(new_creature)
	new_creature.global_position = at_position
