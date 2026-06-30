extends State

func Enter():
	print("Entrou no Enter do punching_right_state_gd")
	character.animation_player.play("punching/punching_right")
	await character.animation_player.animation_finished
	state_machine.Change_State("idle_right_state")
func Exit():

	pass


func Physics_Update(delta):
	pass
