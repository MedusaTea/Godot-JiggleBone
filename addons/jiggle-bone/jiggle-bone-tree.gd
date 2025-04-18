@tool
extends EditorPlugin

var icon = preload("res://icon.svg")
var jiggleScript = preload("res://addons/jiggle-bone/jiggle-bone.gd")

func _enter_tree():
	add_custom_type("JiggleBone", "SpringBoneSimulator3D", jiggleScript, icon)
	
func _exit_tree():
	remove_custom_type("JiggleBone")
