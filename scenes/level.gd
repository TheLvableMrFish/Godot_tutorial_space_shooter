extends Node2D

# 1. Load the scene
var meteor_scene: PackedScene = ("res://scenes/meteor.tscn")

func _on_meteor_timer_timeout():
	# 2. create an instance
	var meteor = meteor_scene.instance()
	
	#  3. Attach the node to the level scene tree
	$Meteors.add_child(meteor)
	
