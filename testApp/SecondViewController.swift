//
//  SecondViewController.swift
//  testApp
//
//  Created by Masahiro Atarashi on 2020/10/31.
//

import UIKit
import Firebase

class SecondViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        messageLabel.text = "認証後の画面"
    }
    
}
