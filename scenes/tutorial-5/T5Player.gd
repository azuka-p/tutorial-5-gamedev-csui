extends KinematicBody2D

export(int) var speed = 400
export(int) var jump_speed = -600
export(int) var GRAVITY = 1200

const UP = Vector2(0, -1)

var velocity = Vector2()


func get_input():
	var animation = "diri_kanan"

	velocity.x = 0
	if is_on_floor() and Input.is_action_just_pressed("up"):
		velocity.y = jump_speed
	if Input.is_action_pressed("right"):
		velocity.x += speed
		animation = "jalan_kanan"
		$AnimatedSprite.flip_h = false
	if Input.is_action_pressed("left"):
		velocity.x -= speed
		animation = "jalan_kanan"
		$AnimatedSprite.flip_h = true

	if $AnimatedSprite.animation != animation:
		$AnimatedSprite.play(animation)


func _physics_process(delta):
	velocity.y += delta * GRAVITY
	get_input()
	velocity = move_and_slide(velocity, UP)

	var ded := false
	for index in get_slide_count():
		var collision := get_slide_collision(index)
		var body := collision.collider
		if body.name == "Player":
			ded = true
	if ded:
		get_parent().remove_child(self)
