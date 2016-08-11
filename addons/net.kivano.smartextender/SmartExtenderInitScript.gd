tool
extends EditorPlugin

var dock # A class member to hold the dock during the plugin lifecycle

func _enter_tree():
	# Initialization of the plugin goes here
	# First load the dock scene and instance it:
	dock = preload("content/SmartExtenderLogic.tscn").instance()
	
	# Add the loaded scene to the docks:
	add_control_to_container(CONTAINER_TOOLBAR, dock);
#	dock.show();
	
func _exit_tree():
	# Clean-up of the plugin goes here
	# Remove the scene from the docks:
	# remove_control_from_docks( dock )
	# Remove the dock
	
	if(dock!=null):
		dock.get_parent().remove_child(dock);
		dock.free() # Erase the control from the memory
		dock = null;