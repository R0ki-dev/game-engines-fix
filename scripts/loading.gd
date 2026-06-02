extends Node2D


@onready var progress_bar: ProgressBar = $ProgressBar
@export var next_scene: String = "res://scenes/game.tscn"
var progress: Array[float] = []

func _on_ready() -> void:
	ResourceLoader.load_threaded_request(next_scene)

func _process(delta):
	var status = ResourceLoader.load_threaded_get_status(next_scene, progress)
	
	match status:
		ResourceLoader.THREAD_LOAD_IN_PROGRESS:
			var pct = progress[0] * 100
			progress_bar.value = pct
		ResourceLoader.THREAD_LOAD_LOADED:
			var scene = ResourceLoader.load_threaded_get(next_scene)
			get_tree().change_scene_to_packed(scene)
