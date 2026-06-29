class_name StateMachine
extends Node

var current_state : State

var states : Dictionary = {}

signal state_changed(old_state, new_state)

func Initialize(character_owner):
	print("Entrou no initialize do state_machine.gd")
	for child in get_children():

		if child is State:

			child.character = character_owner
			child.state_machine = self

			states[child.name.to_lower()] = child
			
func Get_State(state_name : String):
	print("Entrou no Get_State do state_machine.gd")
	return states.get(state_name.to_lower())
	
func Change_State(state_name):
	print("Entrou no Change_State do state_machine.gd. Novo state: %s", state_name)
	var new_state = Get_State(state_name)

	if new_state == null:
		print("Novo state = null, returnando...")
		return

	var old_state = current_state

	if current_state:
		print("current_state existe, saindo dele...")
		current_state.Exit()

	current_state = new_state
	print("No Change_State do state_machine.gd. current_state = %s", current_state)
	current_state.Enter()

	state_changed.emit(old_state, current_state)
	
func Update(delta):

	if current_state:
		current_state.Update(delta)

func Physics_Update(delta):

	if current_state:
		current_state.Physics_Update(delta)

func Handle_Input(event):
	
	if current_state:
		current_state.Handle_Input(event)
