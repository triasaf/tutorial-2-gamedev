extends RigidBody2D

@export var max_speed_upwards = -300
@export var max_speed_sides = 100
@export var thrust_force_upwards = 900  # Adjust this value to control the strength of the thruster
@export var thrust_force_sides = 50  # Adjust this value to control the strength of the thruster
@export var resistance_factor = 0.95

# Reference to the jet thrust sprites
@onready var jet_up = $Jets  # Replace with the correct path to your upward jet sprite
@onready var jet_left = $"JetsLeft"  # Replace with the correct path to your left jet sprite
@onready var jet_right = $"JetsRight"  # Replace with the correct path to your right jet sprite

var can_be_controlled: bool = false

func _physics_process(delta: float) -> void:
	
	if can_be_controlled:
		# Get the current velocity
		var velocity = linear_velocity
		
		# Check if the "move_up" action is being pressed
		if Input.is_action_pressed("move_up"):
			# Apply a force to counteract gravity and provide upward thrust
			apply_central_force(Vector2(0, -thrust_force_upwards))
			
			jet_up.visible = true
		else:
			jet_up.visible = false
		
		# Limit the upward velocity to the maximum speed
		if velocity.y < max_speed_upwards:
			linear_velocity.y = max_speed_upwards
			
		
		if Input.is_action_pressed("move_right"):
			apply_central_force(Vector2(thrust_force_sides, 0))
			jet_right.visible = true
		else:
			jet_right.visible = false
			
			
			
		if Input.is_action_pressed("move_left"):
			apply_central_force(Vector2(-thrust_force_sides, 0))
			jet_left.visible = true
		else:
			jet_left.visible = false
			
		# Apply resistance to horizontal movement when no input is pressed
		if not Input.is_action_pressed("move_right") and not Input.is_action_pressed("move_left"):
			linear_velocity.x *= resistance_factor  # Gradually reduce horizontal velocity
			if abs(linear_velocity.x) < 1:  # Stop completely when velocity is very small
				linear_velocity.x = 0
	
	
	
