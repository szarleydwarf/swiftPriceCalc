//
//  ViewController.swift
//  SwiftPriceCalc
//
//  Created by The App Experts on 04/01/2021.
//  Copyright © 2021 The App Experts. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var skipButton: UIButton!
    
    @IBOutlet var vm: ViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.vm = ViewModel()
    }


    @IBAction func skipToList(_ sender: UIButton) {
        vm.goTo(viewControllerName: "ProductListVC", navigation: self.navigationController!)
    }
}

