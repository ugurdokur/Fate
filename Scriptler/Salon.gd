extends Node2D



func _on_mutfak_gcs_body_entered(body):
	get_tree().change_scene("res://Sahneler/Mutfak.tscn")
	


func _on_yatak_gcs_body_entered(body):
	get_tree().change_scene("res://Sahneler/YatakOdası.tscn")


func _on_Koltuk_body_entered(body):
	get_tree().change_scene("res://Seçimler/Kanepe1.tscn")


func _on_btn_cks_pressed():
	get_tree().quit()
