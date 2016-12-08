//
//  InitialViewController.swift
//  HidingStatusBar
//
//  Created by Tobias Helmrich on 08.12.16.
//  Copyright © 2016 Tobias Helmrich. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {

    @IBAction func presentModal(_ sender: Any) {
        let modalViewController = storyboard?.instantiateViewController(withIdentifier: "ModalViewController") as! ModalViewController
        present(modalViewController, animated: true, completion: nil)
    }

}
