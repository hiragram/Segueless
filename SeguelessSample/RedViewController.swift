//
//  RedViewController.swift
//  Segueless
//
//  Created by yuyahirayama on 2017/01/14.
//  Copyright © 2017年 Yuya Hirayama. All rights reserved.
//

import UIKit
import Segueless

class RedViewController: UIViewController, StoryboardInstantitable {

  @IBOutlet private weak var textLabel: UILabel!

  var text: String? {
    set {
      textLabel.text = newValue
    }

    get {
      return textLabel.text
    }
  }
}
