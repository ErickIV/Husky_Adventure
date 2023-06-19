extends Label

var score = 0

# Inside some function, maybe _ready()
bat.connect("bat_died", self, "_on_Bat_died")

func _on_Bat_died():
	score += 1
