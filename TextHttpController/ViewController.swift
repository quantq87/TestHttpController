//
//  ViewController.swift
//  TextHttpController
//
//  Created by tran.quoc.quan on 4/19/17.
//  Copyright © 2017 tran.quoc.quan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let array = HttpServices.sharedInstance.emptyStringArray
        HttpServices.sharedInstance.setBaseURL(url:"http://139.59.109.83:9001/api")
        HttpServices.sharedInstance.validateAccount(email : "quantq777@gmail.com", completion:{(isSuccess, responseObject) in
            print("Call Api completion")
        })
        print(array)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

