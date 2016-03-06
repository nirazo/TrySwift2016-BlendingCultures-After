//
//  HandVC.swift
//  BlendingCultures-After
//
//  Created by Kenzo on 2016/03/05.
//  Copyright © 2016年 Karuta. All rights reserved.
//

import UIKit

class HandVC: UITableViewController {
    
    private var dataSource = HandDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = dataSource
        self.navigationItem.leftBarButtonItem = self.editButtonItem()
        let addButton = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "addNewCard:")
        self.navigationItem.rightBarButtonItem = addButton
        self.tableView.registerClass(CardCell.self, forCellReuseIdentifier: "cardCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func addNewCard(sender: UIBarButtonItem) {
        dataSource.addItemTo(tableView)
    }
}
