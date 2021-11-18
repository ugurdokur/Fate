extends Node2D





func _on_yatak_gcs_body_entered(body):
		get_tree().change_scene("res://Sahneler/YatakOdası.tscn")



func _on_btn_cks_pressed():
	get_tree().quit()
