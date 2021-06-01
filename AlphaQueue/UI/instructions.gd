extends Control

func initialize(status):
	if status == "Won":
		$VBoxContainer/Label.text = "Victory."
	else:
		$VBoxContainer/Label.text = "Death."


func _on_Button_pressed():
	var _return = get_tree().change_scene("res://World.tscn")
	queue_free()

