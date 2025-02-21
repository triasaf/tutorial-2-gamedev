extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_node_or_null("BlueShip").can_be_controlled = true
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
