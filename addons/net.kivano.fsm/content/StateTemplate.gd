extends "res://addons/net.kivano.fsm/content/FSMState.gd";

#  State usually is performimg logic based on variables in external node, like 'Enemy'. This variable
#  usually points to this node. It dont have any other purpose other than to be available for child states.
#var logicRoot; 

# Reference to parent FSM node, can be used to acces FSM functions and variables.
#var fsm;

#when entering state
func enter(fromState=null):
	pass

#when updating state
func update(deltaTime):
	pass

#when exiting state
func exit(toState=null):
	pass

# If fsm.transitionsHardcodedInStates is true, then this is right place to implement
# transition logic. Simply return next state id, and fsm will automatically change state.
func computeNextState():
	return self.get_name()

