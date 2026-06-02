extends Area2D
class_name Hurtbox

signal damage()
signal dead()

@export var HP:= 1

func _Damage(value: int):
	HP -= value
	
	damage.emit()
	
	if HP <= 0:
		dead.emit()
