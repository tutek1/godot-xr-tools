extends RigidBody3D


signal pointer_pressed(at)


var _material := StandardMaterial3D.new()


# Called when the node enters the scene tree for the first time.
func _ready():
	# Connect pointer_pressed signals
	connect("pointer_pressed",Callable(self,"_on_pointer_pressed"))

	# Generate a random material color
	_set_random_color()

	# Change the mesh to use our generated material
	$MeshInstance3D.material_override = _material


# Called when a user clicks checked the cube using the pointer
func _on_pointer_pressed(_at: Vector3):
	# Randomize the color
	_set_random_color()


# Sets a random color checked the material
func _set_random_color():
	# Set the albedo color to a random value
	_material.albedo_color = Color(randf(), randf(), randf())