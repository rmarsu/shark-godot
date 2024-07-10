extends Area3D

@onready var texture = preload("res://images/blow.png")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_body_entered(body):
	var mesh = get_node("Untitled")
	mesh.material_override.albedo_texture = texture
	$DestroyTouched.start()
	print("dies")
	

func _on_destroy_touched_timeout():
	get_parent().queue_free()
	get_tree().change_scene_to_file("res://end.tscn")
