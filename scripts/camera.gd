extends Camera2D

var players: Array = []

func _ready() -> void:
	get_targets()
	
func _process(_delta: float) -> void:
	if players.size() == 0:
		return
	
	if players.size() == 1:
		position = players[0].position
		return
	
	# Segue o ponto médio entre os dois players
	var mid = (players[0].position + players[1].position) / 2.0
	position = mid

func get_targets():
	players = get_tree().get_nodes_in_group("Player")
	if players.size() == 0:
		push_error("Nenhum Player encontrado no grupo 'Player'")
