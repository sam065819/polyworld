extends Control

func _ready() -> void:
	if OS.has_feature("server"):
		print("Running server mode")
		get_tree().change_scene_to_file.call_deferred("res://server/view.tscn")


func _on_animation_player_animation_finished(_anim_name: StringName) -> void:
	get_tree().change_scene_to_file("res://scenes/menus/main.tscn")
