extends State

func Enter():
	print("Entrou no Enter do parrying_left_state_gd")
	character.can_parry = true
	print("Can parry ? %s", character.can_parry)
	character.animation_player.play("parrying/parrying_left")
	await character.animation_player.animation_finished
	state_machine.Change_State("idle_left_state")

func Exit():

	pass


func Physics_Update(delta):
	pass
