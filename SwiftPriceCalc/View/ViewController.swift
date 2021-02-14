//
//  ViewController.swift
//  SwiftPriceCalc
//
//  Created by The App Experts on 04/01/2021.
//  Copyright © 2021 The App Experts. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {
    @IBOutlet weak var skipButton: UIButton!
    
    @IBOutlet weak var video: UIView!
    @IBOutlet var vm: ViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.vm = ViewModel()
        let path = vm.getFilePath(from: "lol", type: Const().videoExt)
        if path.isEmpty {
//            vm.showAlert(view: self, title: "OK", message: "file > \(Const().intro).\(Const().videoExt) < not found")
        }
        vm.playVideo(from: path, in:video)
    }


    @IBAction func skipToList(_ sender: UIButton) {
        print("SKIP PRESSED")
//        show(ProductListVC(), sender: self)
//        performSegue(withIdentifier: "ProductListSegue", sender: self)
        vm.goTo(viewControllerName: Const().productVC, navigation: self.navigationController!)
    }
    
    
}

