extends Control

func _ready():
	$Records.text = "Ваш рекорд: " + str(Score.maxscore)
func _on_play_pressed():
	get_tree().change_scene_to_file("res://main.tscn")


func _on_hints_pressed():
	get_tree().change_scene_to_file("res://hints.tscn")


func _on_settings_pressed():
	get_tree().change_scene_to_file("res://settings.tscn")
