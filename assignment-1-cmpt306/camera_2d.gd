extends Camera2D
class_name Camera

@export var rotationSpeed := 0.05;
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	rotation += rotationSpeed 
	pass
