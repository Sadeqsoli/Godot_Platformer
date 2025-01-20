extends Node2D

const speed = 60
var dir = 1

@onready var rc_right = $RC_Right
@onready var rc_left = $RC_Left
@onready var anim_sprite = $AnimatedSprite2D
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if rc_right.is_colliding():
		dir = -1
		anim_sprite.flip_h = true 
	if rc_left.is_colliding():
		dir = 1
		anim_sprite.flip_h = false 
		
	position.x  += dir * speed * delta
