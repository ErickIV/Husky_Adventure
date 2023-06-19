extends Node2D

const EnemyScene = preload("res://Enemies/Bat.tscn")

var gameWorld = null

func _ready():
	if get_node_or_null("/root/World") != null:
		gameWorld = get_node("/root/World")
	else:
		print("World node not found!")

func spawn_enemy():
	var enemyInstance = EnemyScene.instantiate()
	enemyInstance.enemy_scene = EnemyScene  # set the enemy scene

	# add the enemy to the GameWorld node
	World.add_child(enemyInstance)
