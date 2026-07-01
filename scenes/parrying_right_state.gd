extends State

func Enter():
	print("Entrou no Enter do parrying_right_state_gd")
	character.can_parry = true
	character.animation_player.play("parrying/parrying_right")

func Exit():

	pass


func Physics_Update(delta):
	print("Can parry ? %s", character.can_parry)
	await character.animation_player.animation_finished
	state_machine.Change_State("idle_right_state")
