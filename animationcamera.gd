extends Node3D

@export var wave : int

func _on_harder_timeout():
	match wave:
		0:
			$Spawner/EnemiesSpawnTimeout.set_wait_time(0.7)
			wave += 1
		1:
			var anim : Animation = $AnimationPlayer.get_animation("idle")
			anim.loop_mode = Animation.LOOP_LINEAR
			$AnimationPlayer.play("idle")
			wave += 1
		2:
			var anim : Animation = $AnimationPlayer.get_animation("idle_harder")
			anim.loop_mode = Animation.LOOP_LINEAR
			$AnimationPlayer.play("idle_harder")
			wave += 1
		3:
			$CPUParticles3D.set_emitting(true)
			wave += 1


