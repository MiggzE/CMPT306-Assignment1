extends Node2D
class_name SpawnManager

@export var spawnTime : float = 0.7
@export var nextTimeToSpawn : float = 0.0
@export var obstacleScene : PackedScene
@export var targetNode : Node
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	assert(obstacleScene)
	assert(targetNode)
	nextTimeToSpawn = Time.get_unix_time_from_system() + (1.0/spawnTime)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	if Time.get_unix_time_from_system() >= nextTimeToSpawn:
		var new_obstacle := obstacleScene.instantiate()
		targetNode.add_child(new_obstacle)
		nextTimeToSpawn = Time.get_unix_time_from_system() + (1.0/spawnTime)
