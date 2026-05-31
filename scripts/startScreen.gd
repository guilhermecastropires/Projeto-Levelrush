extends Control
 
 
func _on_startBtn_pressed() -> void:
	get_tree().change_scene_to_file("res://scene/tropic.tscn")
 
 
func _on_controlsBtn_pressed() -> void:
	pass # Adicione a lógica do botão Controls aqui
 
 
func _on_quitBtn_pressed() -> void:
	get_tree().quit()
 
