extends Area2D

@export var area_id: String = "" # Unique identifier for each ObjectiveArea
@export var target_ship_name: String = "" # Name of the ship to control when this area is reached
@export var win_screen_scene: PackedScene


func _on_ObjectiveArea_body_entered(body: RigidBody2D):
	if (body.name == "BlueShip"):
		var current_file = get_tree().current_scene.scene_file_path
		var next_level = current_file.to_int() + 1
		
		var next_level_path = "res://scenes/Level" + str(next_level) + ".tscn"
		
		print("Reached objective!")
		
		# Behavior customization based on area_id
		if area_id == "mainlevel":
			get_tree().change_scene_to_file(next_level_path)
			
			
		elif area_id == "level1_1":
			print("Custom behavior for Level 1 Area 1")
			# the controls will be changed to the green ship inside the level
			var parent = get_tree().current_scene
			var target_ship = parent.get_node_or_null(target_ship_name)
			if target_ship:
				print(parent)
				parent.set_controlled_ship(target_ship)
				
				
				
			else:
				print("Error: Target ship '%s' not found!" % target_ship_name)
			
			$AnimatedSprite2D.visible = false
			
			
	
		elif area_id == "level1_2":
			pass
	
	if (body.name == "GreenShip"):
		if area_id == "level1_2":
			print("YOU WIN")
			# Load and add the win screen UI
			if win_screen_scene:
				var win_screen = win_screen_scene.instantiate()
				get_tree().current_scene.add_child(win_screen)  # Add to the current scene
				print("Win screen displayed")
			else:
				print("Error: Win screen scene is not assigned!")
	
		
		
		
