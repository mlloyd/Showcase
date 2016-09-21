//
//  FirstPresenter.swift
//  Showcase
//
//  Created by Martin Lloyd on 21/09/2016.
//  Copyright © 2016 Martin Lloyd. All rights reserved.
//

import UIKit

protocol FirstPresenterDelegate: class {
    
}

protocol FirstPresenterProtocol {
    func presentDetail()
    func presentModal()
}

class FirstPresenter: FirstPresenterProtocol {

    unowned let userInterface:  FirstPresenterDelegate
    unowned let flowController: FirstFlowControllerRouteExtension
    
    init(userInterface: FirstPresenterDelegate,
         flowController: FirstFlowControllerRouteExtension) {
        self.userInterface = userInterface
        self.flowController = flowController
    }
    
    func presentDetail() {
        self.flowController.presentDetail()
    }
    
    func presentModal() {
        self.flowController.presentModal()
    }
}
