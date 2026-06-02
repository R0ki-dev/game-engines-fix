extends Node2D

@onready var breakable_wall: CharacterBody2D = $"."
@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D
@onready var collision_shape_2d: CollisionShape2D = $CollisionShape2D
@onready var hurtbox_collision_shape_2d: CollisionShape2D = $Hurtbox/HurtboxCollisionShape2D

func _on_hurtbox_damage() -> void:
	return

func _on_hurtbox_dead() -> void:
	hurtbox_collision_shape_2d.set_deferred("disabled", true)
	collision_shape_2d.set_deferred("disabled", true)
	breakable_wall.visible = false
	audio_stream_player_2d.play()
