extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_destroy_timeout():
	self.queue_free()
