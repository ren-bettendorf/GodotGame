extends Node


# Declare member variables here. Examples:
var turn_count = 0
var current_weapon = ""
var current_hp = 10
var enemy_hp = 10
var weapon_damage = {"sword": 2, "axe": 2, "staff": 2}
var enemy_damage = 3

var tavern_cellar = "res://Levels/SelectWeaponScene.tscn"
var fight_scene = "res://Levels/FightScene.tscn"
var final_scene = "res://Levels/FinalScene.tscn"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _attack(): 
	turn_count = turn_count + 1
	enemy_hp = enemy_hp - weapon_damage[current_weapon]
	print_debug("Enemy : " + str(enemy_hp))
	current_hp = current_hp - enemy_damage
	print_debug("Player : " + str(current_hp))
	pass

func _defend():
	turn_count = turn_count + 1
	print_debug("Enemy : " + str(enemy_hp))
	current_hp = current_hp + 1
	print_debug("Player : " + str(current_hp))
	pass

func _update_weapon(weapon):
	current_weapon = weapon
	pass
