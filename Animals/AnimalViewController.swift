//
//  AnimalViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//
//🐱
//Mouse -> 🐭
//Hamster -> 🐹
//Bunny -> 🐰
//Panda -> 🐼
//Lion -> 🦁
//Pig -> 🐷
//Frog -> 🐸
//Octopus -> 🐙
import UIKit

class AnimalViewController: UIViewController {
    
    @IBOutlet weak var animalTitleLabel: UILabel!
    
    @IBOutlet weak var animalSubtitleLabel: UILabel!
    
    var imageAnimal : String?
    
    override func viewWillAppear(_ animated: Bool) {
        if  let imageAnimal = imageAnimal {
            
            let animalName = animalEmoji(animal: imageAnimal)
            animalTitleLabel?.text = animalName

            animalSubtitleLabel?.text = imageAnimal
            navigationItem.title = imageAnimal
            
        }
    }
    
    
    func animalEmoji(animal:String)->String{
        switch animal {
        case "Dog":
            return "🐶"
        case "Cat":
            return "🐱"
        case "Mouse":
            return "🐭"
        case "Hamster":
            return "🐹"
        case "Bunny":
            return "🐰"
        case "Panda":
            return "🐼"
        case "Lion":
            return "🦁"
        case "Pig":
            return "🐷"
        case "Frog":
            return "🐸"
        case "Octopus":
            return "🐙"
        default:
            return "🦄"
            
        }
    }
    
    
    
}
