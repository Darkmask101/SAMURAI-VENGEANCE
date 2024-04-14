extends ParallaxBackground



var scrol_speed = 50


func _process(delta):
	scroll_offset.x -= scrol_speed * delta
