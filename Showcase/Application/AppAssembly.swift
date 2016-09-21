//
//  AppAssembly.swift
//  Showcase
//
//  Created by Martin Lloyd on 21/09/2016.
//  Copyright © 2016 Martin Lloyd. All rights reserved.
//

import UIKit
import Swinject
import SwinjectStoryboard

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
extension SwinjectStoryboard {
    
    class func setup() {
        
        defaultContainer.registerForStoryboard(FirstViewController.self) { r, c in
            c.setup = true
            c.presenter = FirstPresenter()
        }
        
        defaultContainer.registerForStoryboard(SecondViewController.self) { r, c in
            c.presenter = SecondPresenter()
        }
    }
}
