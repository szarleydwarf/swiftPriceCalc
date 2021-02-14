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
        self.registerCell()
        
        
    }
    
    func registerCell () {
        let customCell = UINib(nibName: Const().identifier, bundle: nil)
        self.table.register(customCell, forCellReuseIdentifier: Const().identifier)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
}
