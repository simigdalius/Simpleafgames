extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_snake_3d_pressed() -> void:
	get_tree().change_scene_to_file("res://singleplayer/snake3d/snake_3d.tscn")


func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://ui/control.tscn")
