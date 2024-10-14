//
//  Utility.swift
//  CommandLineGame
//
//  Created by Student on 10/11/24.
//

import Foundation

func dontWakeUp(){
	print("You never wake up??? Must be dead then... GAME OVER")
}
func wakeUp(){
	print("You wake up in a dungeon made out of concrete bricks with torches illuminating a long dark hallway.")
	print("Would you like to continue or go back to sleep? (c/s)")
	let answer1 = readLine()
	
	if let answer1 = answer1{
		if(answer1.lowercased().contains("s")){
			print("You go back to sleep. GAME OVER")
			exit(0)
		}
		print("You continue down the narrow hallway and reach an impass. The hallway to your left ends abruptly and has a doorway to another room. The hallway to your right continues into darkness.")
		print("Would you like to go left or right? (l/r)")
		let answerRight = readLine()
		
		if let answerRight = answerRight{
			if(answerRight.lowercased().contains("r")){
				print("You continue down the hallway to your right.")
				print("You approach another door. You go inside and find a treasure chest. Would you like to open it or inspect the plaque on the lid? (o/i)")
				let answerInspect = readLine()
				
				if let answerInspect = answerInspect{
					if(answerInspect.lowercased().contains("o")){
						print("You open the lid of the chest without reading the plaque. There is a string that is conntected to the lid and is fed through the body of the chest. The string activates a lever and a trapdoor underneath you is activated.")
						print("GAME OVER")
					}
					else{
						print("You read the plaque and it says:")
						print("\"Definitely not booby trapped.\" Open it?(y/n)")
						let answerOpen = readLine()
						
						if let answerOpen = answerOpen{
							if (answerOpen.lowercased().contains("y")){
								print("You open the lid of the chest trying to test your luck. There is a string that is conntected to the lid and is fed through the body of the chest. The string activates a lever and a trapdoor underneath you is activated. Can you even read???")
								print("GAME OVER")
							}
							else{
								print("You choose not to open the obviously boobie trapped chest. You inspect the room a little bit more and realize there is a bottle of an orange liquid. It seems to be glowing. It's almost begging you to drink it.")
								print("Drink potion or leave room? (d/l)")
								let answerDrink = readLine()
								
								if let answerDrink = answerDrink{
									if (answerDrink.lowercased().contains("d")){
										print("\"You drink the potion and now have resistance to fire.\"")
										print("After you leave the room you keep walking down the hallway and step on a pressure plate. Flamethrowers from the walls activate and engulf you in fire.")
										print("\"The mysterious potion saves you from burning.\"")
										print("You reach another impass in the hallway. Left or right? (l/r)")
										let answerLeaveRoom = readLine()
										
										if let answerLeaveRoom = answerLeaveRoom{
											if (answerLeaveRoom.lowercased().contains("l")){
												print("You head down the left hallway and encounter an empty room. Theres nothing in here but a button. Click button? (y/n)")
												let leftButton = readLine()
												
												if let leftButton = leftButton{
													if(leftButton.lowercased().contains("y")){
														print("You click the button and a secret compartment in the floor opens behind you. Inside is a note saying, \"The dungeon is dangerous. Watch your every step...\". You leave the room to walk down the hallway but a pressure plate you missed on the way in is activated. The roof starts to cave in above you. You try to run away as fast as you can but there's no escape.")
														print("GAME OVER")
													}
													else{
														print("You leave the room to walk down the hallway but a pressure plate you missed on the way in is activated. The roof starts to cave in above you. You try to run away as fast as you can but there's no escape.")
														print("GAME OVER")
													}
												}
											}
											else {
												print("You head down the right hallway and enter a room with a button. Theres nothing else in here but a barrel. Click button?")
												let rightButton = readLine()
												
												if let rightButton = rightButton{
													if (rightButton.lowercased().contains("y")){
														print("The button is pressed and a detonation line from the button to the barrel is lit. You sit and watch the line burn because \"ooh pretty!\". You explode.")
														print("GAME OVER")
													}
													else {
														print("The door locked behind you. You have to press the button.")
														print("The button is pressed and a detonation line from the button to the barrel is lit. You sit and watch the line burn because \"ooh pretty!\". You explode.")
														print("GAME OVER")
													}
												}
											}
										}
								
									}
									else {
										print("You put the potion down being skeptical of it's contents.")
										print("After you leave the room you keep walking down the hallway and step on a pressure plate. Flamethrowers from the walls activate and engulf you in fire, killing you.")
										print("GAME OVER")
									}// end of right hallway story
								}
							}
						}
					}
				}
			}
			else {
				print("You go down the hallway to your left and walk through the door.")
				print("The room you enter seems to be a prison of sorts... You see cages full of bones and beds. Inspect cells or continue? (i/c)")
				let answerInspectCell = readLine()
				
				if let answerInspectCell = answerInspectCell{
					if (answerInspectCell.lowercased().contains("i")){
						print("Which cage would you like to inspect? Cage 1 has a skeleton laying on the floor wearing a hooded robe. It looks like he has an item in his hand. Cage 2 has a skeleton sitting against a wall wearing knight armor. (1/2)")
						let answerCage1 = readLine()
						
						if let answerCage1 = answerCage1{
							if (answerCage1.lowercased().contains("1")){
								print("You open cage 1 and inspect the skeleton laying face down on the floor. In his hand he's holding a wand. It has no use to you for you don't know any spells. Inspect further? (y/n)")
								let answerInspectWizard = readLine()
								
								if let answerInspectWizard = answerInspectWizard{
									if (answerInspectWizard.lowercased().contains("y")){
										print("You disrupt the remains of the wizard and he wakes up with anger in his eye sockets. He fires a spell from his hands and vaporizes you instantly. Maybe don't play with magic people's bodies...")
										print("GAME OVER")
									}
									else {
										print("You leave the wizard alone and exit the cage.")
										print("Inspect cage 2? (y/n)")
										let inspectCage2 = readLine()
										
										if let inspectCage2 = inspectCage2{
											if (inspectCage2.lowercased().contains("y")){
												print("You open up the cage with the dead body of a knight. Inspect body? (y/n)")
												let inspectKnight = readLine()
												
												if let inspectKnight = inspectKnight{
													if (inspectKnight.lowercased().contains("y")){
														print("You inspect the knights body further and don't find any items. You decide to take his armor... not like he's gonna use it anyways...")
														print("\"You put on his armor\"")
														print("You leave the prison room and continue down another illuminated hallway. You reach the end of the hallway and step on a pressure plate. Arrows fire through the wall you are facing.")
														print("The armor protects you from the arrows.")
														print("A sign on the wall is pointing arrows in two directions. The left arrow says \"exit\". The right arrow says \"The real exit.\" (l/r)")
														let exitLeft = readLine()
														
														if let exitLeft = exitLeft{
															if (exitLeft.lowercased().contains("l")){
																print("You take the left hallway towards the \"exit\". There is a door that looks like it has light emiting from the bottom of it. In your high hopes you swing open the door and run through, desperate to escape. What you failed to realize was that the door was a mimic. You walked right into the mouth of a monster... smart...")
																print("GAME OVER")
															}
															else {
																print("You take the right hallway towards the \"exit\". There is a door that looks like it has light emiting from the bottom of it. In your high hopes you swing open the door and run through, desperate to escape. You exit the dungeon and are free.")
																print("YOU WIN")
															}
														}
														else {
															print("You leave the prison room and continue down another illuminated hallway. You reach the end of the hallway and step on a pressure plate. Arrows fire through the wall you are facing.")
															print("The arrows penetrate you and you die from blood loss... Armor could prevent that... Just saying")
															print("GAME OVER")
														}
													}
													else {
														print("You leave the prison room and continue down another illuminated hallway. You reach the end of the hallway and step on a pressure plate. Arrows fire through the wall you are facing.")
														print("The arrows penetrate you and you die from blood loss... Armor could prevent that... Just saying")
														print("GAME OVER")
													}
												}
												else {
													print("You leave the body of the knight alone and leave his cell.")
													
												}
											} else {
												print("You leave the prison room and continue down another illuminated hallway. You reach the end of the hallway and step on a pressure plate. Arrows fire through the wall you are facing.")
												print("The arrows penetrate you and you die from blood loss... Armor could prevent that... Just saying")
												print("GAME OVER")
											}
										}
									}
								}
								else {
									print("You open up the cage with the dead body of a knight. Inspect body? (y/n)")
									let inspectKnight = readLine()
									
									if let inspectKnight = inspectKnight{
										if (inspectKnight.lowercased().contains("y")){
											print("You inspect the knights body further and don't find any items. You decide to take his armor... not like he's gonna use it anyways...")
											print("\"You put on his armor\"")
											print("You leave the prison room and continue down another illuminated hallway. You reach the end of the hallway and step on a pressure plate. Arrows fire through the wall you are facing.")
											print("The armor protects you from the arrows.")
											print("A sign on the wall is pointing arrows in two directions. The left arrow says \"exit\". The right arrow says \"The real exit.\" (l/r)")
											let exitLeft = readLine()
											
											if let exitLeft = exitLeft{
												if (exitLeft.lowercased().contains("l")){
													print("You take the left hallway towards the \"exit\". There is a door that looks like it has light emiting from the bottom of it. In your high hopes you swing open the door and run through, desperate to escape. What you failed to realize was that the door was a mimic. You walked right into the mouth of a monster... smart...")
													print("GAME OVER")
												}
												else {
													print("You take the right hallway towards the \"exit\". There is a door that looks like it has light emiting from the bottom of it. In your high hopes you swing open the door and run through, desperate to escape. You exit the dungeon and are free.")
													print("YOU WIN")
												}
											}
										}
										else {
											print("You open cage 1 and inspect the skeleton laying face down on the floor. In his hand he's holding a wand. It has no use to you for you don't know any spells. Inspect further? (y/n)")
											let answerInspectWizard = readLine()
											
											if let answerInspectWizard = answerInspectWizard{
												if (answerInspectWizard.lowercased().contains("y")){
													print("You disrupt the remains of the wizard and he wakes up with anger in his eye sockets. He fires a spell from his hands and vaporizes you instantly. Maybe don't play with magic people's bodies...")
													print("GAME OVER")
												}
												else {
													print("You leave the prison room and continue down another illuminated hallway. You reach the end of the hallway and step on a pressure plate. Arrows fire through the wall you are facing.")
													print("The arrows penetrate you and you die from blood loss... Armor could prevent that... Just saying")
													print("GAME OVER")
												}
											}
										}
									}
								}
							}
							else {
								print("You inspect the knights body further and don't find any items. You decide to take his armor... not like he's gonna use it anyways...")
								print("\"You put on his armor\"")
								print("You leave the prison room and continue down another illuminated hallway. You reach the end of the hallway and step on a pressure plate. Arrows fire through the wall you are facing.")
								print("The armor protects you from the arrows.")
								print("A sign on the wall is pointing arrows in two directions. The left arrow says \"exit\". The right arrow says \"The real exit.\" (l/r)")
								let exitLeft = readLine()
								
								if let exitLeft = exitLeft{
									if (exitLeft.lowercased().contains("l")){
										print("You take the left hallway towards the \"exit\". There is a door that looks like it has light emiting from the bottom of it. In your high hopes you swing open the door and run through, desperate to escape. What you failed to realize was that the door was a mimic. You walked right into the mouth of a monster... smart...")
										print("GAME OVER")
									}
									else {
										print("You take the right hallway towards the \"exit\". There is a door that looks like it has light emiting from the bottom of it. In your high hopes you swing open the door and run through, desperate to escape. You exit the dungeon and are free.")
										print("YOU WIN")
									}
								}
							}
						}
					}
					else {
						print("You leave the prison room and continue down another illuminated hallway. You reach the end of the hallway and step on a pressure plate. Arrows fire through the wall you are facing.")
						print("The arrows penetrate you and you die from blood loss... Armor could prevent that... Just saying")
						print("GAME OVER")
					}
				}
			}
		}
	}
}
