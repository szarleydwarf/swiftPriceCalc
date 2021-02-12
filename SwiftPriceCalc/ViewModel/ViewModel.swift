//
//  ViewModel.swift
//  SwiftPriceCalc
//
//  Created by The App Experts on 05/01/2021.
//  Copyright © 2021 The App Experts. All rights reserved.
//

import Foundation
import UIKit
import AVKit

class ViewModel: NSObject {
    
    
    func goTo(viewControllerName:String, navigation: UINavigationController) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let vc = storyboard.instantiateViewController(withIdentifier: viewControllerName) as! ProductListVC
//        navigation.pushViewController(vc, animated: true)
    }
    func getFilePath(from resourceName:String, type: String) -> String {
        guard let path = Bundle.main.path(forResource: resourceName, ofType: type) else {
            debugPrint("file > \(resourceName).\(type) < not found")
            return ""
        }
        return path
    }
    
    func playVideo(from path:String, in view:UIView) {
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.frame = view.bounds
        view.layer.addSublayer(playerLayer)
        player.play()
    }

}
