//
//  ProductListVC.swift
//  SwiftPriceCalc
//
//  Created by The App Experts on 12/02/2021.
//  Copyright © 2021 The App Experts. All rights reserved.
//

import UIKit

class ProductListVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var table: UITableView!
    var vm:ViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.table.delegate = self
        self.table.dataSource = self

        self.registerCell()
    }
    
    func registerCell () {
        let customCell = UINib(nibName: Const().cellName, bundle: nil)
        self.table.register(customCell, forCellReuseIdentifier: Const().identifier)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: Const().identifier) as? ProductCell {
            
            return cell
        }
        return UITableViewCell()
    }
    
}
