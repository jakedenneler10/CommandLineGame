//
//  main.swift
//  CommandLineGame
//
//  Created by Student on 10/11/24.
//

import Foundation

print("Wake up? (y/n)")

let choice = readLine()
//This is checking to see if we can unwrap choice.
if let choice = choice {
	print("You chose to wake up")
	if (choice.contains ("y")){
		wakeUp()
	}
	if (choice.contains ("n"))
	{
	 dontWakeUp()
	}
	if (choice.contains ("3"))
	{
		
	}
} else {
	print("What the heck did you do!?!")
	exit(0)
}
