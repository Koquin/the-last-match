extends State

func Enter():
	print("Entrou no Enter do jump_left_state_gd")
	character.velocity.y = character.jump_velocity

	character.animation_player.play("jumping/jumping_right")
	
func Exit():

	pass


func Physics_Update(delta):

	if character.is_on_floor():
		state_machine.Change_State("idle_right_state")
		return
