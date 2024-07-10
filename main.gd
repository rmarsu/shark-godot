extends Node3D

var wave = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func SpawnEnemies():
	var randomEnemy = randi_range(1, 5)
	var path = "res://Enemy%s.tscn"
	var newPath = path % str(randomEnemy)
	print(newPath)
	var Enemy = load(newPath)
	var Add = Enemy.instantiate()
	Add.position.x = randi() % 70
	Add.position.y = randi() % 40
	Add.position.z = randf_range(1, 4)
	add_child(Add)
	print("added")
	


func _on_enemies_spawn_timeout_timeout():
	SpawnEnemies()
	

func _on_golden_fish_timeout():
	SpawnGoldenFish()
	
func SpawnGoldenFish():
	var Enemy = load("res://Enemy6.tscn")
	var Add = Enemy.instantiate()
	Add.position.x = randi() % 70
	Add.position.y = randi() % 40
	Add.position.z = randf_range(1, 5)
	add_child(Add)
