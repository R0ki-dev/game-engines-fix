extends Area2D
class_name Hitbox

@export var cur_damage = 1
@export var DEBUG_IS_ACTIVE = false

func _on_ready() -> void:
	set_active(DEBUG_IS_ACTIVE)

func set_active(boolean: bool):
	for child in get_children():
		if child is not CollisionShape2D: continue
		
		child.disabled = not boolean

func _on_area_entered(area: Area2D) -> void:
	if area is Hurtbox:
		area._Damage(cur_damage)
		print("Hit!")
