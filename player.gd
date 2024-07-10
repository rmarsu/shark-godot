extends CharacterBody3D


const SPEED = 30
const JUMP_VELOCITY = 6
const angular_accleration = 5
var turned = false


func _physics_process(delta):
	if Input.is_action_just_pressed("right"):
		if turned != true:
			$AnimationPlayer.play("right")
			turned = true
		
	if Input.is_action_just_pressed("left"):
		if turned == true:
			$AnimationPlayer.play("left")
			turned = false
	var input_dir = Input.get_vector("left", "right", "down", "up")
	var direction = (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.y = direction.x * SPEED
		velocity.x = direction.z * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	$Untitled.rotation.x = lerp_angle($Untitled.rotation.x, direction.x, delta * angular_accleration)
	move_and_slide()



func _on_area_3d_area_entered(area):
	var mesh = load("res://objects/shark_open.obj")
	$Untitled.set_mesh(mesh)
	$CloseMouth.start()



func _on_close_mouth_timeout():
	var mesh = load("res://objects/shark.obj")
	$Untitled.set_mesh(mesh)
