extends Area2D

@onready var timer = $Timer
#@onready var collision_shape_2d = $CollisionShape2D


func _on_body_entered(body):
	print("You Died!")
	Engine.time_scale = 0.4
	body.get_node("CollisionShape2D").queue_free()
	timer.start()

	
func _on_timer_timeout():
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
