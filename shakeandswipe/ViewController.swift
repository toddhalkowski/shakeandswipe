//
//  ViewController.swift
//  shakeandswipe
//
//  Created by todd d Halkowski on 7/1/15.
//  Copyright (c) 2015 Geneva. All rights reserved.
//  This code uses a switch case statement to print a msg to console to log which direction user swipes
//  or prints a message is user shakes their device

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        var swipeRight = UISwipeGestureRecognizer(target: self, action: "swiped:")
        
        swipeRight.direction = UISwipeGestureRecognizerDirection.Right
        
        self.view.addGestureRecognizer(swipeRight)
        
        
        var swipeLeft = UISwipeGestureRecognizer(target: self, action: "swiped:")
        
        swipeLeft.direction = UISwipeGestureRecognizerDirection.Left
        
        self.view.addGestureRecognizer(swipeLeft)
        
        
        
        var swipeUp = UISwipeGestureRecognizer(target: self, action: "swiped:")
        
        swipeRight.direction = UISwipeGestureRecognizerDirection.Up
        
        self.view.addGestureRecognizer(swipeUp)
        
    }
    
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent) {
        
        
        if event.subtype == UIEventSubtype.MotionShake {
            
            println("user shook their device")

            
        }
    }

    func swiped(gesture: UIGestureRecognizer) {
        
        
        if  let swipeGesture = gesture as? UISwipeGestureRecognizer {
            
            switch swipeGesture.direction {
                
            case UISwipeGestureRecognizerDirection.Right:
                
                println("user swiped right")
                
                
            case UISwipeGestureRecognizerDirection.Left:
                
                println("user swiped left")
                
                
            case UISwipeGestureRecognizerDirection.Up:
                
                println("user swiped up")
                
                
            default:
                break
                
            }
        }
        
        
        
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

