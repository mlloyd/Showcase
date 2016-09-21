//
//  FirstViewController.swift
//  Showcase
//
//  Created by Martin Lloyd on 21/09/2016.
//  Copyright © 2016 Martin Lloyd. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, FirstPresenterDelegate {
    
    var presenter: FirstPresenterProtocol!
    
    @IBOutlet weak var navExampleButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func navExampleAction(_ sender: UIButton) {
        self.presenter.presentDetail()
    }
    
    @IBAction func presentManualAction(_ sender: AnyObject) {
        self.presenter.presentModal()
    }
}

