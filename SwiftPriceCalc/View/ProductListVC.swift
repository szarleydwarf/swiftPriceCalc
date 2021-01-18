//
//  ProductListVC.swift
//  SwiftPriceCalc
//
//  Created by The App Experts on 18/01/2021.
//  Copyright © 2021 The App Experts. All rights reserved.
//

import UIKit

class ProductListVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var table: UITableView!
    private let identifier = "ProductCell"
    override func viewDidLoad() {
        super.viewDidLoad()
        self.registerCell()
    }
    
    func registerCell() {
        let customCell = UINib(nibName: identifier, bundle: nil)
        self.table.register(customCell, forCellReuseIdentifier: identifier)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        
        
        return UITableViewCell()
    }
    
}
