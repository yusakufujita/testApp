//
//  SecondViewController.swift
//  testApp
//
//  Created by Masahiro Atarashi on 2020/10/31.
//

import UIKit
import Firebase
import FirebaseUI

class SecondViewController: UIViewController, FUIAuthDelegate {

    @IBOutlet weak var messageLabel: UILabel!
    
    let user = Auth.auth().currentUser!
    
    
    override func viewDidLoad() {
        
        messageLabel.text = "認証後の画面\n\(user.isAnonymous)\n\(user.uid)"
    }
    
    @IBAction func signOut(_ sender: UIButton) {
        let authUI = FUIAuth.defaultAuthUI()
        do {
            try authUI?.signOut()
            dismiss(animated: true, completion: nil)
            print("SignOut成功")
        } catch {
            print("SignOut失敗")
        }
    }
}
