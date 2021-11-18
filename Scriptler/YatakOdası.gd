extends Node2D




func _on_salon_gcs_body_entered(body):
	get_tree().change_scene("res://Sahneler/Salon.tscn")


func _on_banyo_gcs_body_entered(body):
	get_tree().change_scene("res://Sahneler/Banyo.tscn")



func _on_btn_cks_pressed():
	get_tree().quit()
