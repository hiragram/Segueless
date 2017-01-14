//
//  UIViewControllerExtension.swift
//  Segueless
//
//  Created by yuyahirayama on 2017/01/14.
//  Copyright © 2017年 Yuya Hirayama. All rights reserved.
//

import UIKit

public extension UIViewController {
  public func present<T: StoryboardInstantitable>(viewControllerTypeToPresent: T.Type, animated: Bool = true, completion: (() -> Void)? = nil, configuration: ((T) -> Void)?) where T: UIViewController {
    let vc = T.instantiateFromStoryboard()
    _ = vc.view
    configuration?(vc)
    present(vc, animated: animated, completion: completion)
  }

  public func show<T: StoryboardInstantitable>(_ vcType: T.Type, sender: Any?, configuration: ((T) -> Void)?) where T: UIViewController {
    let vc = T.instantiateFromStoryboard()
    _ = vc.view
    configuration?(vc)
    show(vc, sender: sender)
  }
}
