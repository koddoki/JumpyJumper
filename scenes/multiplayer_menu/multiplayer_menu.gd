extends Control

var press_any_key_label = preload("res://scenes/press_any_key_label/press_any_key_label.tscn")
var game_start_timer = preload("res://scenes/press_any_key_label/press_any_key_label.tscn")

signal start_multiplayer_game(player1_color:String, player2_color:String)
signal close_multiplayer_tab


func _ready():
	spawn_press_any_key_label()

func _input(event):
	if event.is_action_pressed("start_game"):
		print("inputou start_game")


func spawn_press_any_key_label():
	pass


func spawn_game_start_timer():
	var instance = game_start_timer.instantiate()
	$BottomTextSpawn.add_child(instance)


func _on_return_button_pressed():
	print("SinglePlayerMenu is emiting the signal 'close_multiplayer_tab'")
	emit_signal("close_multiplayer_tab")
