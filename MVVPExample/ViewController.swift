//
//  ViewController.swift
//  MVVPExample
//
//  Created by code.swifty.cc on 2021/3/29.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func clickMe() {
        let viewController = ProductListViewcontroller.instantiate()
        present(viewController, animated: true, completion: nil)
    }
}

