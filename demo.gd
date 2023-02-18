extends Node

onready var startMenu = $Control/startmenu

func _ready():
	startMenu.visible = false

func menuClose():
	if startMenu.visible:
		startMenu.visible = false

# start-open btn
func _on_start_pressed():
#	print("hello world")
	if not startMenu.visible:
		startMenu.visible = true
	else:
		startMenu.visible = false
	pass

# startmenu - news
func _on_news_pressed():
	print("this is news")
	
	# close startmenu
	menuClose()
	
	pass

# startmenu - military
func _on_military_pressed():
	print("this is military")
	
	# close startmenu
	menuClose()
	
	pass

# startmenu - resource hub
func _on_resource_pressed():
	print("this is resource")
	
	# close startmenu
	menuClose()
	
	pass

# startmenu - socials
func _on_social_pressed():
	print("this is social")
	
	# close startmenu
	menuClose()
	
	pass
