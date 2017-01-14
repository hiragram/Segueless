//
//  StoryboardInstantiatable.swift
//  Segueless
//
//  Created by yuyahirayama on 2017/01/14.
//  Copyright © 2017年 Yuya Hirayama. All rights reserved.
//

import UIKit

public protocol StoryboardInstantitable {}

public extension StoryboardInstantitable where Self: UIViewController {
  static var storyboardName: String {
    return String.init(describing: Self.self)
  }

  static var storyboard: UIStoryboard {
    return UIStoryboard.init(name: storyboardName, bundle: nil)
  }

  static func instantiateFromStoryboard() -> Self {
    return storyboard.instantiateInitialViewController() as! Self
  }
}
