extends Area2D

@onready var game_manager = %GameManager
@onready var anim_coin = $AnimationPlayer


func _on_body_entered(body: Node2D) -> void:
	game_manager.add_score()
	anim_coin.play("pickup")
