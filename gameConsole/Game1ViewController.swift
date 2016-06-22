//
//  Game1ViewController.swift
//  gameConsole
//
//  Created by Joseph Dion on 6/22/16.
//  Copyright © 2016 Joe. All rights reserved.
//

import UIKit

class Game1ViewController: UIViewController {
    
    // This is the color variable string
    // this string will be changed each time
    // in each of the button funcitons.
    var color:String = ""
    
    // This is the color label it controls the label
    // at the top of the screen
    @IBOutlet var colorLabel: UILabel!
    
    // Color Buttons
    // These buttons need to call the checkColor
    @IBAction func redButton(sender: AnyObject) {
        checkColor("red")
        
    }
    
    // Same thing here
    @IBAction func blueButton(sender: AnyObject) {
        checkColor("blue")
        
    }
    @IBAction func greenButton(sender: AnyObject) {
        checkColor("green")
        
    }
    @IBAction func yellowButton(sender: AnyObject) {
        checkColor("yellow")
        
    }
    
    // This function creates a random integer named colorInt
    // It then checks using if statements, if else statements
    // and else statements. It then sets the color label to the
    // correct.
      func newColor() -> Void {
        var colorInt = Int(arc4random_uniform(4))+1
        
        if colorInt == 1 {
            color = "red"
        }
        else if colorInt == 2 {
            color = "blue"
        }
        else if colorInt == 3 {
            color = "green"
        }
        else {
            color = "yellow"
        }
        
        colorLabel.text = color
    }
    
    
    // This function uses an if statement to check if the button
    // pressed colors matches the color called "color"
    func checkColor(buttonColor:String) -> Void {
        if buttonColor == color {
            newColor()
        }
    }
    
    
    
    // This function is called
    override func viewDidLoad() {
        super.viewDidLoad()
        // new color is called to give the initial color
        newColor()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
           super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */

}
