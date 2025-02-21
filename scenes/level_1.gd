extends Node

var current_controlled_ship: Node = null

func _ready() -> void:
	# Set the initial controlled ship (modify this to match your ship's name in the scene)
	var initial_ship = get_node_or_null("BlueShip")  # Change "BlueShip" to the correct ship name

	if initial_ship:
		set_controlled_ship(initial_ship)
		print("Initial controlled ship:", initial_ship.name)
	else:
		print("Error: No initial ship found!")

func set_controlled_ship(ship: Node) -> void:
	# Disable control for the previously controlled ship
	if current_controlled_ship:
		current_controlled_ship.can_be_controlled = false

	# Enable control for the new ship
	current_controlled_ship = ship
	if current_controlled_ship:
		current_controlled_ship.can_be_controlled = true
		print("Now controlling:", current_controlled_ship.name)
