extends Area2D

@export var next_level = ""

var players_inside: Array = []

func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player") and not players_inside.has(body):
		players_inside.append(body)
		check_all_players()

func _on_body_exited(body: Node2D) -> void:
	if body.is_in_group("Player"):
		players_inside.erase(body)

func check_all_players():
	var all_players = get_tree().get_nodes_in_group("Player")
	if all_players.size() == 0:
		return
	
	# Só avança quando TODOS os players estiverem dentro da área
	if players_inside.size() >= all_players.size():
		call_deferred("load_next_scene")

func load_next_scene():
	get_tree().change_scene_to_file("res://scene/" + next_level + ".tscn")
