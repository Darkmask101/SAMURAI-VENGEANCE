extends Node


'''

func _on_back_pressed():
	$Control/VBoxContainer/START.visible = true
	$"../Control/VBoxContainer/EXIT".visible = true
	$"../Cont$rol/VBoxContainer/OPTIONS".visible = true
	$"../AUDIO/BACK".visible = false
	$"../AUDIO/MUTE".visible = false
	pass # Replace with function body.


func _on_mute_pressed():
	$"../AUDIO/AudioStreamPlayer2D".stream_paused = true
	pass # Replace with function body.


func _on_options_pressed():
	$Control/VBoxContainer/START.visible = false
	$"../Control/VBoxContainer/EXIT".visible = false
	$"../Cont$rol/VBoxContainer/OPTIONS".visible = false
	$"../AUDIO/BACK".visible = trueParallaxBackground
	$"../AUDIO/MUTE".visible = true
	pass # Replace with function body.


func _on_start_pressed():
	get_tree().change_scene_to_file("res://world.tscn")
	pass # Replace with function body.\
	



func _on_exit_pressed():
	get_tree().quit()
	pass # Replace with function body.

'''
