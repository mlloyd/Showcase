//
//  FirstViewController.swift
//  Showcase
//
//  Created by Martin Lloyd on 21/09/2016.
//  Copyright © 2016 Martin Lloyd. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    var presenter: FirstPresenter!
    
    var setup: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
                
        if self.setup {
            self.view.backgroundColor = UIColor.yellow
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

