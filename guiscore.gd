extends CanvasLayer


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$RichTextLabel2.text = "Очков: " + str(Score.score)
	


func _on_harder_timeout():
	$goodjob.show()	
	$Hide.start()

func _on_hide_timeout():
	$goodjob.hide()
