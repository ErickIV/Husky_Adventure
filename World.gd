extends Node

var Enemy = preload("res://Enemies/Bat.tscn")
var score = 0
var bats_killed = 0

func _ready():
	# Connect all existing enemies to the signal
	for enemy in get_tree().get_nodes_in_group("enemies"):
		connect_enemy(enemy)

func _on_SpawnTimer_timeout():
	var enemy = Enemy.instance()
	add_child(enemy)
	enemy.position = $YSort/Spawn.position
	connect_enemy(enemy)
	
	#change spawn position
	var area = $SpawnArea
	var position = area.rect_position + Vector2(randf() * area.rect_size.x, randf() * area.rect_size.y)
	$YSort/Spawn.position = position

func connect_enemy(enemy):
	# Connect the signal
	enemy.connect("bat_died", self, "change_score", [1])

func change_score(pts):
	score += pts
	bats_killed += 1
	if bats_killed % 5 == 0:
		PlayerStats.health += 1
	$CanvasLayer/Score.text = str(score)
