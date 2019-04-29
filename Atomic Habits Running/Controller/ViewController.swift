//
//  ViewController.swift
//  Atomic Habits Running
//
//  Created by Marek Justus on 20/04/2019.
//  Copyright © 2019 Marek Justus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var menuButton: UIBarButtonItem!
    
    @IBOutlet weak var runningMainCard: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sideMenus()
        customizeNavBar()
        
    runningMainCard.setImage(UIImage(named: "main-card.png"), for: UIControl.State.normal)
        
    }

    @IBAction func runningButtonPressed(_ sender: UIButton) {
     changeRunningHabitState(withName: "main-card.png", on: sender)
    }

        func changeRunningHabitState(withName: String, on button: UIButton) {

            if runningMainCard.currentImage == UIImage(named: "main-card.png") {

        runningMainCard.setImage(UIImage(named: "main-card-done.png"), for: UIControl.State.normal)

            } else {
                
                    runningMainCard.setImage(UIImage(named: "main-card.png"), for: UIControl.State.normal)
                
            }
            
    }
    
    func sideMenus() {
        
        if revealViewController() != nil {
            
            menuButton.target = revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            revealViewController().rearViewRevealWidth = 275
            revealViewController().rightViewRevealWidth = 160
            
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
        }
        
        
    }

    func customizeNavBar() {
        
        navigationController?.navigationBar.tintColor = UIColor(displayP3Red: 255/255, green: 256/255, blue: 256/255, alpha: 1)
        navigationController?.navigationBar.barTintColor = UIColor(displayP3Red: 255/255, green: 87/255, blue: 35/255, alpha: 1)
        
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
    }
    
    
    
}

