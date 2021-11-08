extends Node2D

func _on_btn_salon_pressed():
	get_tree().change_scene("res://Sahneler/Salon.tscn")
	
	


func _on_btn_banyo_pressed():
	get_tree().change_scene("res://Sahneler/Banyo.tscn")


func _on_btn_cks_pressed():
	get_tree().quit()
