extends State

func Enter():
	print("Entrou no Enter do idle_right_state_gd")
	character.velocity.x = 0

	character.animation_player.play("idle/idle_right")
	
func Exit():

	pass


func Physics_Update(delta):

	# -------- Transições --------
	if character.player_input.left:
		state_machine.Change_State("idle_left_state")
		return
		
	if character.player_input.right:
		state_machine.Change_State("walking_right_state")
		return

	if character.player_input.jump:
		state_machine.Change_State("jumping_right_state")
		return

	if character.player_input.crouch:
		state_machine.Change_State("crouching_right_state")
		return

	if character.player_input.punch:
		state_machine.Change_State("punching_right_state")
		return

	if character.player_input.kick:
		state_machine.Change_State("kicking_right_state")
		return

	if character.player_input.parry:
		state_machine.Change_State("parrying_right_state")
		return
