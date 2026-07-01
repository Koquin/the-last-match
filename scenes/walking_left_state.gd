extends State

func Enter():
	print("Entrou no Enter do walking_left_state_gd")
	character.is_facing_right = false
	character.animation_player.play("walking/walking_left")
	print("Está de frente pra direita ? %s", character.is_facing_right)

func Exit():

	pass


func Physics_Update(delta):

	# Movimento
	character.velocity.x = -character.walk_velocity
	
	# -------- Transições --------
	if character.player_input.right:
		state_machine.Change_State("walking_right_state")
		return

	if !character.player_input.left:
		state_machine.Change_State("idle_left_state")
		return

	if character.player_input.jump:
		state_machine.Change_State("jumping_left_state")
		return

	if character.player_input.crouch:
		state_machine.Change_State("crouching_left_state")
		return

	if character.player_input.punch:
		state_machine.Change_State("punching_left_state")
		return

	if character.player_input.kick:
		state_machine.Change_State("kicking_left_state")
		return

	if character.player_input.parry:
		state_machine.Change_State("parrying_left_state")
		return
