//
//  ViewController.swift
//  SocialNetwork
//
//  Created by Joseph Kim on 1/31/17.
//  Copyright © 2017 Joseph Kim. All rights reserved.
//

import UIKit
import Firebase
import FBSDKCoreKit
import FBSDKLoginKit

class SignInVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    @IBAction func facebookButtonPressed(_ sender: Any) {
        
        let facebookLogin = FBSDKLoginManager()
        
        facebookLogin.logIn(withReadPermissions: ["email"], from: self) { (result, error) in
            if error != nil {
                print("MOR: Unable to authenticate with Facebook - \(error)")
            } else if result?.isCancelled == true {
                print("MOR: Facebook authentication cancelled")
            } else {
                print("MOR: Facebook authentication successful")
                let credential = FIRFacebookAuthProvider.credential(withAccessToken: FBSDKAccessToken.current().tokenString)
                self.firebaseAuth(credential)
            }
        }
    }

    func firebaseAuth(_ credential: FIRAuthCredential) {
        FIRAuth.auth()?.signIn(with: credential, completion: { (user, error) in
            if error != nil {
                print("MOR: Unable to authenticate with Firebase")
            } else {
                print("MOR: Firebase authentication successful")
            }
        })
    }
    
}

