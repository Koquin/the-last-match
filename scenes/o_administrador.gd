extends CharacterBody2D
@onready var state_machine = $StateMachine
@onready var player_input = $PlayerInput
@onready var animation_player: AnimationPlayer = $Sprite2D/AnimationPlayer

const jump_velocity = -1000
@export var gravity := 2000.0

func _ready():
	print("Entrou no ready do o_administrador.gd")
	state_machine.Initialize(self)
	state_machine.Change_State("idle_right_state")

func _process(delta):
	player_input.Update()
	state_machine.Update(delta)
	
func _input(event):
	state_machine.Handle_Input(event)
	
func _physics_process(delta: float) -> void:
	state_machine.Physics_Update(delta)
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * 3.5 * delta
		
	move_and_slide()
