//
//  SecondViewController.swift
//  StatusBarAnimation
//
//  Created by Taeshawit Suwanwigo on 22/5/2562 BE.
//  Copyright © 2562 Taeshawit Suwanwigo. All rights reserved.
//

import UIKit

final class SecondViewController: UIViewController, StatusBarAnimationViewController {
    
    var statusBarShouldBeHidden = false
    var statusBarAnimationStyle: UIStatusBarAnimation = .fade
    override var prefersStatusBarHidden: Bool {
        return statusBarShouldBeHidden
    }
    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation {
        return statusBarAnimationStyle
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        updateStatusBarAppearance(hidden: true)
    }
    
    @IBAction private func dismissButtonDidTouch(_ sender: Any) {
        updateStatusBarAppearance(hidden: false) { [weak self] _ in
            self?.dismiss(animated: true)
        }
    }
    
}
