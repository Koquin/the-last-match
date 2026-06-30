extends State

func Enter():
	print("Entrou no Enter do crouching_right_state_gd")
	character.animation_player.play("crouching/crouching_right")
	
func Exit():

	pass


func Physics_Update(delta):
	if !character.player_input.crouch:
		state_machine.Change_State("idle_right_state")
		
	if character.player_input.crouch and character.player_input.left:
		state_machine.Change_State("crouching_left_state")
