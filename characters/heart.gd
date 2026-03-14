extends Node2D

@export var SPEED = 6

func _physics_process(delta: float) -> void:
	self.position.y -= SPEED

func _on_area_2d_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	if body.name == "Player":
		body.heart()
		self.queue_free()
