//
//  InitialViewController.swift
//  HidingStatusBar
//
//  Created by Tobias Helmrich on 08.12.16.
//  Copyright © 2016 Tobias Helmrich. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {

    var statusBarShouldBeHidden = false
    
    override var prefersStatusBarHidden: Bool {
        return statusBarShouldBeHidden
    }
    
    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation {
        return .slide
    }
    
    @IBAction func presentModal(_ sender: Any) {
        // Instantiate the modal view controller from storyboard
        let modalViewController = storyboard?.instantiateViewController(withIdentifier: "ModalViewController") as! ModalViewController
        
        // Hide the status bar
        statusBarShouldBeHidden = true
        UIView.animate(withDuration: 0.25) {
            self.setNeedsStatusBarAppearanceUpdate()
        }
        
        // Present the modal view controller
        present(modalViewController, animated: true, completion: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Show the status bar
        statusBarShouldBeHidden = false
        UIView.animate(withDuration: 0.25) {
            self.setNeedsStatusBarAppearanceUpdate()
        }
    }

}
