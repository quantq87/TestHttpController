//
//  ViewController.swift
//  TextHttpController
//
//  Created by tran.quoc.quan on 4/19/17.
//  Copyright © 2017 tran.quoc.quan. All rights reserved.
//

import UIKit
import UserController

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        KHUserServices.sharedInstance.validateAccount(email: "quantq777@gmail.com") { (isSuccessful, isValid, msgError) in
            if isSuccessful {
                if !isValid {
                    print("user is not valid!!!")
                    let parameter = NSDictionary(objects: ["email", "firstName", "lastName", "phone", "password", "birthday", "areald",],
                                                 forKeys: ["quantq777@gmail.com" as NSCopying, "quantq" as NSCopying, "quan" as NSCopying, "0982789809" as NSCopying, "123456".MD5() as NSCopying, "04/05/1987" as NSCopying, "0" as NSCopying])
                    KHUserServices.sharedInstance.registerAccount(parameter: parameter, completion: { (isSuccessful, isCreate, msgError) in
                        
                    })
                } else {
                    print("user is valid!!!")
                }
            } else {
                print("Error:\n:\(msgError)")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension String {
    func MD5() -> Data {
        let messageData = self.data(using:.utf8)!
        var digestData = Data(count: Int(CC_MD5_DIGEST_LENGTH))
        
        _ = digestData.withUnsafeMutableBytes {digestBytes in
            messageData.withUnsafeBytes {messageBytes in
                CC_MD5(messageBytes, CC_LONG(messageData.count), digestBytes)
            }
        }
        
        return digestData
    }
}

