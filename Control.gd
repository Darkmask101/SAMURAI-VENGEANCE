extends  Control

var play = 0 
@onready var stream =  $"../AUDIO/AudioStreamPlayer2D".stream.resource_path.get_file()



func _physics_process(delta):
	$"../RichTextLabel".text = "currently playing" + "  " + str(stream)
	if Input.is_action_pressed('ui_left'):
		$"../WorldEnvironment".Brightness += 1
	
	
	
func _on_options_pressed():
	$VBoxContainer/START.visible = false
	$VBoxContainer/EXIT.visible = false
	$VBoxContainer/OPTIONS.visible = false
	$MUTE.visible = true
	$BACK.visible = true
	pass # Replace with function body.
	
	



func _on_exit_pressed():
	get_tree().quit()
	pass # Replace with function body.
	
	



func _on_start_pressed():
	#get_tree().change_scene_to_file("res://world.tscn")
	$VBoxContainer/EXIT.visible = false
	$VBoxContainer/START.visible = false
	$VBoxContainer/OPTIONS.visible = false
	$"../Sprite2D/RONIN".visible = true
	$"../Sprite2D/CAREER".visible = true
	$"../Sprite2D".visible = true
	$PLAY.visible = true
	$ROGUE.visible = true
	$BACK.visible = true
	$Button2.visible = false
	$Button.visible = false
	
	pass # Replace with function body.






func _on_back_pressed():
	$VBoxContainer/START.visible = true
	$VBoxContainer/EXIT.visible = true
	$VBoxContainer/OPTIONS.visible = true
	$MUTE.visible = false
	$"../Sprite2D".visible = false
	get_node("BACK").visible = false
	$ROGUE.visible = false
	$PLAY.visible = false
	$Button.visible = true
	$Button2.visible = true
	pass # Replace with function body.




func _on_mute_pressed():
	$"../AUDIO/AudioStreamPlayer2D".stream_paused = true
	#cur_stream = $"../AUDIO/AudioStreamPlayer2D".stream.resource_path.get_file()
	play += 1
	if play >= 2:
			$"../AUDIO/AudioStreamPlayer2D".stream_paused = false
			play = 0
			
	#print(cur_stream)
	pass # Replace with function body.




func _on_rogue_pressed():
	get_tree().change_scene_to_file("res://WORLD.tscn")
	pass # Replace with function body.
