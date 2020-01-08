mob/Stat()
	statpanel("Units")
	for(var/mob/Monsters/M in usr.UnitList) stat("Level [M.Level]",M)
	statpanel("Unit Stats")
	statpanel("Inventory")
	statpanel("Unit Information")
	for(var/mob/Monsters/M in usr.Selected)
		if(M.Wagon == 0)
			statpanel("Unit Stats")
			stat("Level [M.Level]",M)
			stat("EXP", "[M.EXP]/[M.EXPNeeded]")
			stat("Stomach Fullness", "[M.Hunger] / [M.MaxHunger]")
			stat("Cold Level", "[M.Coldness]")
			stat("Tiredness", "[M.Tiredness]")
			stat("--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---")
			stat("Strength", "[M.Strength]")
			stat("Agility", "[M.Agility]")
			stat("Intelligence", "[M.Intelligence]")
			stat("Defence", "[M.Defence]")
			stat("Carry Weight", "[M.weight] / [M.weightmax]")
			if(M.MaxWebContent) stat("Web Content", "[M.WebContent] / [M.MaxWebContent]")
			if(M.HasGland) stat("Poison Damage", "[M.PoisonDMG]")
			if(M.MagicalAptitude)
				stat("--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---")
				stat("Magical Anger", "[M.MagicalAnger]")
				stat("Magical Mind", "[M.MagicalMind]")
				stat("Magical Will", "[M.MagicalWill]")
				stat("Magical Concentration", "[M.MagicalConcentration]")
				stat("Mana", "[M.Mana]")
				stat("Max Mana", "[M.MaxMana]")
			stat("--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---")
			if(M.HoldingWeapon=="Claws"||M.SubRace=="Werewolf") stat("Claw Skill","[M.ClawSkill]")
			if(M.Race!="Dragon" && M.Race!="Spider")
				if(M.HoldingWeapon=="Butcher Knife") stat("ButcherySkill", "[M.ButcherySkill]")
				stat("SpearSkill", "[M.SpearSkill]")
				stat("SwordSkill", "[M.SwordSkill]")
				stat("BowSkill", "[M.BowSkill]")
				stat("AxeSkill", "[M.AxeSkill]")
				stat("DaggerSkill", "[M.DaggerSkill]")
				stat("MaceSkill", "[M.MaceSkill]")
				stat("Un-Armed Skill", "[M.UnArmedSkill]")
				stat("ShieldSkill", "[M.ShieldSkill]")
				stat("ArmourSkill", "[M.ArmourSkill]")
			stat("--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---")
			switch(M.Race)
				if("Spider","Dragon","Zombie","Devourer")
					switch(M.Race)
						if("Spider") stat("CraftingSkill", "[M.WoodCraftingSkill]")
						if("Dragon")
							stat("Eggs", "[M.EggContent]")
							stat("--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---")
							if(!M.SubRace)
								stat("Fire", "[M.FirePoints/10]% / 100%")
								stat("Ice", "[M.IcePoints/10]% / 100%")
								stat("Desert", "[M.SandPoints/10]% / 100%")
								stat("Poison", "[M.PoisonPoints/10]% / 100%")
								stat("Magma", "[M.MagmaPoints/10]% / 100%")
								stat("Water", "[M.WaterPoints/10]% / 100%")
								stat("Zombie", "[M.ZombiePoints/10]% / 100%")
								stat("--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---")
						if("Devourer")
							stat("Stored Bodies", "[M.EggContent]")
							stat("--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---")
							stat("BoneCraftingSkill", "[M.BoneCraftingSkill]")
					stat("WoodCuttingSkill", "[M.WoodCuttingSkill]")
					stat("MineingSkill", "[M.MineingSkill]")
					stat("BuildingSkill", "[M.BuildingSkill]")
					stat("FishingSkill", "[M.FishingSkill]")
					stat("SneakingSkill", "[M.SneakingSkill]")
				else
					stat("WoodCuttingSkill", "[M.WoodCuttingSkill]")
					stat("MineingSkill", "[M.MineingSkill]")
					stat("WoodCraftingSkill", "[M.WoodCraftingSkill]")
					stat("MetalCraftingSkill", "[M.MetalCraftingSkill]")
					stat("JewlCraftingSkill", "[M.JewlCraftingSkill]")
					stat("LeatherCraftingSkill", "[M.LeatherCraftingSkill]")
					stat("PoisonSkill", "[M.PoisonSkill]")
					stat("BoneCraftingSkill", "[M.BoneCraftingSkill]")
					stat("StoneCraftingSkill", "[M.StoneCraftingSkill]")
					stat("SneakingSkill", "[M.SneakingSkill]")
					stat("LockPickingSkill", "[M.LockPickingSkill]")
					stat("CookingSkill", "[M.CookingSkill]")
					stat("PotionSkill", "[M.PotionSkill]")
					stat("FishingSkill", "[M.FishingSkill]")
					stat("BuildingSkill", "[M.BuildingSkill]")
			stat("--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---")
			statpanel("Inventory")
			stat("[M.weight]/[M.weightmax]",M)
			statpanel("Inventory",M.contents)
			stat("--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---")
			statpanel("Unit Information")
			stat("Bleeding [M.BleedType]",M)
			stat("Gender", "[M.Gender]")
			stat("Age", "[M.Age]")
			stat("--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---")
			stat("Blood Content","[M.BloodContent]")
			stat("Head Condition","[M.Head]")
			stat("Nose Condition","[M.Nose]")
			stat("LeftEar Condition","[M.LeftEar]")
			stat("RightEar Condition","[M.RightEar]")
			stat("RightEye Condition","[M.RightEye]")
			stat("LeftEye Condition","[M.LeftEye]")
			stat("Teeth Condition","[M.Teeth]")
			stat("Brain Condition","[M.Brain]")
			stat("Throat Condition","[M.Throat]")
			stat("LeftArm Condition","[M.LeftArm]")
			stat("RightArm Condition","[M.RightArm]")
			stat("LeftLeg Condition","[M.LeftLeg]")
			stat("RightLeg Condition","[M.RightLeg]")
			stat("Heart Condition","[M.Heart]")
			stat("LeftLung Condition","[M.LeftLung]")
			stat("RightLung Condition","[M.RightLung]")
			stat("Spleen Condition","[M.Spleen]")
			stat("Gut Condition","[M.Guts]")
			stat("Stomach Condition","[M.Stomach]")
			stat("Liver Condition","[M.Liver]")
			stat("LeftKidney Condition","[M.LeftKidney]")
			stat("RightKidney Condition","[M.RightKidney]")
			if(M.HasWings) stat("Wings Condition","[M.Wings]")
			stat("--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---")
		else
			statpanel("Inventory",M.contents)
			stat("Carry Weight", "[M.weight] / [M.weightmax]")
	statpanel("Your Information")
	stat("Land Name", "[WorldName]")
	stat("Date", "[Date] - [Ages]")
	stat("History", "[History]")
	stat("Kills", "[usr.Kills]")
	stat("Season", "[Season]")
	stat("Points", "[usr.Points]")
	stat("Worship", "[usr.WorshipPoints]")
	if(night == 1) stat("Time of Day", "Night")
	else stat("Time of Day", "Day")
	stat("CPU", world.cpu)