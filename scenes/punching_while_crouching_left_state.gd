extends State

func Enter():
	print("Entrou no Enter do punching_while_crouching_left_state_gd")
	character.animation_player.play("punching_while_crouching/punching_while_crouching_left")

func Exit():

	pass


func Physics_Update(delta):
	await character.animation_player.animation_finished

	if !character.player_input.crouch:
		state_machine.Change_State("idle_left_state")
	
	if character.player_input.crouch and character.player_input.right:
		state_machine.Change_State("crouching_right_state")
		
	if character.player_input.crouch and not character.player_input.punch:
		state_machine.Change_State("crouching_left_state")
