//
//  CustomAuthPickerViewController.swift
//  testApp
//
//  Created by 藤田優作 on 2020/10/16.
//

import UIKit
import FirebaseUI

class CustomAuthPickerViewController: FUIAuthPickerViewController {

    func authPickerViewController(for authUI: FUIAuth) -> FUIAuthPickerViewController {
      return CustomAuthPickerViewController(authUI: authUI)
    }
    
    let nc = FUIAuth.self

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black

        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
