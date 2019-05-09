//
//  CompleteHabitButton.swift
//  Atomic Habits Running
//
//  Created by Marek Justus on 08/05/2019.
//  Copyright © 2019 Marek Justus. All rights reserved.
//

import UIKit

class CompleteHabitButton: UIButton {
        
        var isOn = false
        
        override init(frame: CGRect) {
            super.init(frame: frame)
            initButton()
        }
        
        required init?(coder aDecoder: NSCoder) {
            super.init(coder: aDecoder)
            initButton()
        }
        
        func initButton() {
            layer.cornerRadius = frame.size.width / 2
            layer.masksToBounds = true
            setImage(UIImage(named:"Running-Shoe-with-background"), for: .normal)
            
        }
        
        func completeHabitButtonPressed() {
            
            
        }
        
        func activateCompleteHabitButton() {
            
            
        }
        
    }
