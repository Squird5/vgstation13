/obj/item/weapon/reagent_containers/food/drinks/bottle/holywater
	name = "Flask of Holy Water"
	desc = "A flask of the chaplain's holy water."
	icon_state = "holyflask"
	bottleheight = 25
	molotov = -1
	isGlass = 1
	smashtext = ""
	smashname = "broken flask"

/obj/item/weapon/reagent_containers/food/drinks/bottle/holywater/New()
	..()
	reagents.add_reagent(HOLYWATER, 100)

/obj/item/weapon/reagent_containers/food/drinks/bottle/holywater/attack(mob/living/M as mob, mob/user as mob, def_zone)
	return

/obj/item/weapon/reagent_containers/food/drinks/bottle/holywater/afterattack(var/atom/target, var/mob/user, var/adjacency_flag, var/click_params)
	if(!adjacency_flag)
		return

	transfer(target, user, splashable_units = amount_per_transfer_from_this)
