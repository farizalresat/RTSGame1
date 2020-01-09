extends Camera2D

export var speed = 10.0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	var inpx = (int(Input.is_action_pressed("ui_right")) 
            - int(Input.is_action_just_pressed("ui_left")))
	var inpy = (int(Input.is_action_pressed("ui_down")) 
            - int(Input.is_action_just_pressed("ui_up")))
	position.x = lerp(position.x, position.x + inpx, speed)
	position.y = lerp(position.y, position.y + inpy, speed)
	#print(position)
	pass

func _input(event):
	print(position)
	pass
