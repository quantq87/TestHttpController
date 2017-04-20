//
//  HttpServices.swift
//  TextHttpController
//
//  Created by tran.quoc.quan on 4/19/17.
//  Copyright © 2017 tran.quoc.quan. All rights reserved.
//

import UIKit
import UserController

class KHUserServices: UserController {
    
    override init() {
        super.init()
    }
    
    // MARK: Shared Instance
    open static let sharedInstance: KHUserServices = KHUserServices()
    
    
    fileprivate func saveCurrentUser (user: UserObj) {
        
    }
    
}

