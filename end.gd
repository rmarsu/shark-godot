extends Node2D

var textstr = "Похоже вы наткнулись на мину. Избегайте их
чтобы оставаться на плаву\nВы набрали %s очков"
# Called when the node enters the scene tree for the first time.
func _ready():
	if Score.score > Score.maxscore:
		Score.maxscore = Score.score		
	var newstr = textstr % str(Score.score)
	$RichTextLabel.text = newstr
	
func _process(delta):
	if Input.is_action_just_pressed("go"):
		ResetGame()

func _on_button_pressed():
	ResetGame()

func ResetGame():
	Score.score = 0
	get_tree().change_scene_to_file("res://menu.tscn")
