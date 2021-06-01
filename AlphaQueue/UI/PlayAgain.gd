extends Control

func initialize(status):
	if status == "Won":
		$VBoxContainer/Label.text = "Victory!!!"
	else:
		$VBoxContainer/Label.text = " DEATH "


func _on_Button_pressed():
	if $VBoxContainer/Label.text == "Victory!!!" :
		var _return = get_tree().change_scene("res://level_2.tscn")
		queue_free()
	else :
		var _return = get_tree().change_scene("res://UI/instructions.tscn")
		queue_free()
