//
//  StatusBarAnimationViewController.swift
//  StatusBarAnimation
//
//  Created by Taeshawit Suwanwigo on 22/5/2562 BE.
//  Copyright © 2562 Taeshawit Suwanwigo. All rights reserved.
//

import UIKit

protocol StatusBarAnimationViewController: class {
    var statusBarShouldBeHidden: Bool { get set }
    var statusBarAnimationStyle: UIStatusBarAnimation { get set }
}

extension StatusBarAnimationViewController where Self: UIViewController {
    func updateStatusBarAppearance(hidden: Bool, withDuration duration: Double = 0.3, completion: ((Bool) -> Void)? = nil) {
        statusBarShouldBeHidden = hidden
        UIView.animate(withDuration: duration, animations: { [weak self] in
            self?.setNeedsStatusBarAppearanceUpdate()
        }, completion: completion)
    }
}
