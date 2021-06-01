extends Control

func initialize(status):
	if status == "Won":
		$VBoxContainer/Label.text = "Victory :  restart game "
	else:
		$VBoxContainer/Label.text = "Try again DEATH "


func _on_Button_pressed():
	if $VBoxContainer/Label.text == "Victory :  restart game " :
		var _return = get_tree().change_scene("res://UI/instructions.tscn")
		queue_free()
	else :
		var _return = get_tree().change_scene("res://level_2.tscn")
		queue_free()
