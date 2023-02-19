extends Node

onready var startMenu = $Control/startmenu
onready var newsWindow = $Control/newsBox
onready var mil_window = $Military/window
onready var res_window = $Resource/window

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
	
	newsWindow.visible = true
	# close startmenu
	menuClose()
	
	pass

# startmenu - military
func _on_military_pressed():
	print("this is military")
	
	mil_window.visible = true
	
	# close startmenu
	menuClose()
	
	pass

# startmenu - resource hub
func _on_resource_pressed():
	print("this is resource")
	
	res_window.visible = true
	
	# close startmenu
	menuClose()
	
	pass

# startmenu - socials
func _on_social_pressed():
	print("this is social")
	
	# close startmenu
	menuClose()
	
	pass

# news window variables
onready var news_title = $Control/newsBox/newsTitle
onready var news_image = $Control/newsBox/newsImg
onready var news_info = $Control/newsBox/newsInfo
#
# old data
onready var dataOld = [news_title.text, news_image.texture, news_info.text]

# news window-next button
func _on_next_pressed():
#	print("you pressed next in news window!")
	
	# change data new
	news_title.text = "Putin's Choice Over Peace!"
	news_image.texture = load("res://assets/war.png")
	news_info.text = "Russia's leader, Vladimir Vladimirovich Putin, has made his firm decision to begin war against Ukrainian forces."
	
	# show previous btn
	$Control/newsBox/previous.visible = true
	
	# hide next btn
	$Control/newsBox/next.visible = false
	
	pass


func _on_previous_pressed():
	
	# reverse data
	news_title.text = dataOld[0]
	news_image.texture = dataOld[1]
	news_info.text = dataOld[2]
	
	# hide previous btn
	$Control/newsBox/previous.visible = false
	
	# show next btn
	$Control/newsBox/next.visible = true
	
	
	pass

# military window option #
func _on_view_pressed():
	
	$Military/Donetsk.visible = true
	
	pass

func _on_counter_pressed():
	$Military/Donetsk/ConfirmationDialog.visible = true
	
	pass
