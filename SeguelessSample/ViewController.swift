//
//  ViewController.swift
//  SeguelessSample
//
//  Created by yuyahirayama on 2017/01/14.
//  Copyright © 2017年 Yuya Hirayama. All rights reserved.
//

import UIKit
import Segueless

class ViewController: UIViewController {

  @IBOutlet weak var textField: UITextField!

  @IBAction func goToRed() {
    show(RedViewController.self, sender: nil) { (vc) in

      // You can configure destination view controller 
      // in this block *WITHOUT PREPAREFORSEGUE*

      vc.text = self.textField.text
    }
  }
}

