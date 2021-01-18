//
//  ViewModel.swift
//  SwiftPriceCalc
//
//  Created by The App Experts on 05/01/2021.
//  Copyright © 2021 The App Experts. All rights reserved.
//

import Foundation
import UIKit

class ViewModel: NSObject {
    
    
    func goTo(viewControllerName:String, navigation: UINavigationController) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: viewControllerName) as! ProductListVC
        navigation.pushViewController(vc, animated: true)
    }
}
