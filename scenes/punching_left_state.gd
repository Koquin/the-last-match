extends State

func Enter():
	print("Entrou no Enter do punching_left_state_gd")
	character.animation_player.play("punching/punching_left")
	await character.animation_player.animation_finished
	state_machine.Change_State("idle_left_state")

func Exit():

	pass


func Physics_Update(delta):
	pass
