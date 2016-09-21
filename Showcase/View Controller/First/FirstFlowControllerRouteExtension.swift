//
//  FirstFlowControllerRouteExtension.swift
//  Showcase
//
//  Created by Martin Lloyd on 21/09/2016.
//  Copyright © 2016 Martin Lloyd. All rights reserved.
//

import UIKit

protocol FirstFlowControllerRouteExtension: class {
    func presentDetail()
    func presentModal()
}

extension FirstViewController: FirstFlowControllerRouteExtension {
    
    func presentDetail() {
        self.performSegue(withIdentifier: "presentDetail", sender: nil)
    }
    
    func presentModal() {
        let viewController = UIViewController()
        viewController.title = "ProgrammaticViewController"
        viewController.view.backgroundColor = UIColor.cyan
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare")
    }
}
