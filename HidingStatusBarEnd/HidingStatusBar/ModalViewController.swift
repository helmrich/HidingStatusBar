//
//  ModalViewController.swift
//  HidingStatusBar
//
//  Created by Tobias Helmrich on 08.12.16.
//  Copyright © 2016 Tobias Helmrich. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {

    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    @IBAction func dismissModal(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}
