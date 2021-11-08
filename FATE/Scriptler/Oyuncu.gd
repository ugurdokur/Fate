extends KinematicBody2D

export (int) var speed = 150

var velocity = Vector2()
onready var _animated_sprite = $AnimatedSprite
onready var _walk1 = get_node("Yurume1")
onready var _walk2 = get_node("Yurume2")
onready var _walk3 = get_node("Yurume3")
onready var _walk4 = get_node("Yurume4")

func get_input():
	velocity = Vector2()
	if Input.is_action_pressed("right"):
		if not _walk1.playing:
			 _walk1.play()
		
		velocity.x += 1
	else:
	
			 _walk1.stop()
	
		
	if Input.is_action_pressed("left"):
		if not _walk2.playing:
			 _walk2.play()
		
		velocity.x -=1 
	else:
	
			 _walk2.stop()
	
	if Input.is_action_pressed("down"):
		if not _walk3.playing:
			 _walk3.play()
		
		velocity.y += 1
	else:
	
			 _walk3.stop()
	
	if Input.is_action_pressed("up"):
		if not _walk4.playing:
			 _walk4.play()
		
		velocity.y += -1
	else:
	
			 _walk4.stop()
	if velocity.y ==1:
		 _animated_sprite.play("on")
	if velocity.y ==-1:
		 _animated_sprite.play("arka")
	if velocity.x ==1:
		 _animated_sprite.play("sag")
	if velocity.x ==-1:
		 _animated_sprite.play("sol")
	
	
	
	
	
	
	
	if velocity == Vector2():
		 _animated_sprite.stop()
		
	velocity = velocity.normalized() * speed

func _physics_process(_delta):
	get_input()
	velocity = move_and_slide(velocity)
	
	
	



