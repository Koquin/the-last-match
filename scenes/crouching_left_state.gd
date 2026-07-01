extends State

func Enter():
	print("Entrou no Enter do crouching_left_state_gd")
	character.animation_player.play("crouching/crouching_left")
	character.is_facing_right = false

func Exit():

	pass


func Physics_Update(delta):
	if !character.player_input.crouch:
		state_machine.Change_State("idle_left_state")
	
	if character.player_input.crouch and character.player_input.right:
		state_machine.Change_State("crouching_right_state")
		
	if character.player_input.punch:
		state_machine.Change_State("punching_while_crouching_left_state")
