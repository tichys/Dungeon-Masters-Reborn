obj
	Tree
		icon = 'Tree.dmi'
		pixel_x = -32
		Tree = 1
		HP = 250
		IsWood = 1
		density = 1
		opacity = 1
		layer = 5

	/*
	if(Season == "Winter")//do trees only grow in winter?
		for(var/turf/T in view(0,src))
			if(T.icon_state == "Grass")
				T.icon = 'plants.dmi'
				T.icon_state = "tree 2x1"
				T.overlays += /obj/Trees/tree2x2
				T.overlays += /obj/Trees/tree1x2
				T.overlays += /obj/Trees/tree3x2
				T.overlays += /obj/Trees/leaves3x2
				T.overlays += /obj/Trees/leaves2x2
				T.overlays += /obj/Trees/leaves1x2
				T.overlays += /obj/Trees/leaves1x1
				T.overlays += /obj/Trees/leaves2x1
				T.overlays += /obj/Trees/leaves3x1
				T.Tree = 1
				T.IsWood = 1
				T.density = 1
				T.opacity = 1
				T.HP = 250
				T.name = "Tree"
			if(T.icon_state == "Snow")
				T.icon = 'plants.dmi'
				T.icon_state = "SnowTree"
				T.overlays += /obj/Trees/tree2x2
				T.overlays += /obj/Trees/tree1x2
				T.overlays += /obj/Trees/tree3x2
				T.Tree = 1
				T.IsWood = 1
				T.density = 1
				T.opacity = 1
				T.HP = 250
				T.name = "Tree"
			if(T.icon_state == "Desert")
				T.icon_state = "Cactus"
				T.Tree = 1
				T.density = 1
				T.HP = 250
				T.opacity = 1
				T.IsWood = 1
				T.name = "Cactus"
				T.Cactus = 1
			if(T.Content == "Marsh")
				T.icon_state = "Bamboo"
				T.Tree = 1
				T.density = 1
				T.HP = 250
				T.IsWood = 1
				T.opacity = 1
				T.name = "Bamboo"
				T.Bamboo = 1
				*/
obj/Grower
	name = ""
	Tree
	//	icon = 'Tree.dmi'
		pixel_x = -32
		New(loc, mob/M)
			var/turf/T = loc
			var/image/I
			if(T.icon_state == "Desert")
				I = image('cactus.dmi', src, "Cactus",2)
				pixel_x = 0

			else if(T.Content == "Marsh")
				I = image('bamboo.dmi', src, "Bamboo",2)
				pixel_x = 0
			else
				I = image('Tree.dmi', src, "", 2)
		//	var/image/I = image(icon, src,icon_state)
			I.alpha = 128
			M << I

