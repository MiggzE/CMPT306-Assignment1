extends AnimatableBody2D
class_name Obstacle

@export var shrink_speed := 0.4

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$CollisionPolygon2D.scale = Vector2.ONE*10.0;

func _physics_process(delta: float) -> void:
	$CollisionPolygon2D.scale -= Vector2.ONE*10.0*delta*shrink_speed;

	if $CollisionPolygon2D.scale.x < .05:
		self.queue_free()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass