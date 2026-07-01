# player_input.gd
class_name PlayerInput
extends Node

var left: bool
var right: bool
var up: bool
var crouch: bool

var jump: bool
var punch: bool
var kick: bool
var parry: bool

func Update():

	left = Input.is_action_pressed("move_left")
	right = Input.is_action_pressed("move_right")
	crouch = Input.is_action_pressed("crouch")

	jump = Input.is_action_just_pressed("jump")
	punch = Input.is_action_just_pressed("punch")
	kick = Input.is_action_just_pressed("kick")
	parry = Input.is_action_just_pressed("parry")
