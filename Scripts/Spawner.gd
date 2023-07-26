extends Node2D


@onready var Enemies = [
	preload("res://Scenes/enemy_1.tscn")
	
	
	
	]

@onready var SpawnPoints = [$SpawnPoint1, $SpawnPoint2]

var Wave = 0

func _ready():
	pass # Replace with function body.


func _process(delta):
	pass


func _on_spawn_timer_timeout():
	Wave += 1
	
	for i in SpawnPoints:
		var Enemy = Enemies.pick_random().instantiate()
		get_parent().call_deferred("add_child", Enemy)
		Enemy.global_position = i.global_position
	
	
