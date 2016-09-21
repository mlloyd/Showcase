//
//  FirstFlowControllerRouteExtension.swift
//  Showcase
//
//  Created by Martin Lloyd on 21/09/2016.
//  Copyright © 2016 Martin Lloyd. All rights reserved.
//

import UIKit

protocol FirstFlowControllerRouteExtension: class {
    func presentDetailSegue()
    func presentDetailProgrammatic()
    func presentModal()
}

extension FirstViewController: FirstFlowControllerRouteExtension {
    
    func presentDetailSegue() {
        self.performSegue(withIdentifier: "presentDetail", sender: UIColor.yellow)
    }
    
    func presentDetailProgrammatic() {
        let viewController = UIViewController()
        viewController.title = "ProgrammaticViewController"
        viewController.view.backgroundColor = UIColor.cyan
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    func presentModal() {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare")
        segue.destination.view.backgroundColor = (sender as! UIColor)
    }
}
