extends Node;

var logicRoot;
var fsm;

func enter(fromState=null):
	pass

func update(deltaTime):
	pass

func exit(toState=null):
	pass

func computeNextState():
	return self.get_name()

