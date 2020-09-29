//
//  UIViewController+Extension.swift
//  AllExtensions
//
//  Created by eyup cimen on 12.03.2020.
//  Copyright © 2020 eyup cimen. All rights reserved.
//

import Foundation
import UIKit

private var dataAssocKey = 0
extension UIViewController {
    
    var data:AnyObject? {
        get {
            return objc_getAssociatedObject(self, &dataAssocKey) as AnyObject?
        }
        set {
            objc_setAssociatedObject(self, &dataAssocKey, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN)
        }
    }
}



extension UIViewController{

  public func addChildViewController(_ child: UIViewController, toContainerView containerView: UIView) {

    addChildViewController(child)
    containerView.addSubview(child.view)
    child.didMove(toParentViewController: self)

    child.view.translatesAutoresizingMaskIntoConstraints = false

    child.view.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 0).isActive = true
    child.view.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: 0).isActive = true
    child.view.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 0).isActive = true
    child.view.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 0).isActive = true
    containerView.heightAnchor.constraint(equalTo: child.view.heightAnchor, constant: 0).isActive = true

    containerView.setNeedsLayout()
  }

  /// SwifterSwift: Helper method to remove a UIViewController from its parent.
  public func removeViewAndControllerFromParentViewController() {
    guard parent != nil else { return }

    willMove(toParentViewController: nil)
    removeFromParentViewController()
    view.removeFromSuperview()
  }
}
