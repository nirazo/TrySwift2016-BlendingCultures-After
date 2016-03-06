//
//  SourceType.swift
//  BlendingCultures-After
//
//  Created by Kenzo on 2016/03/05.
//  Copyright © 2016年 Karuta. All rights reserved.
//
import UIKit

protocol SourceType: UITableViewDataSource {
    var dataObject: DataType { get set }
    var conditionForAdding: Bool { get }
    
    func insertTopRow(tableView: UITableView)
    func deleteRowAtIndexPath(indexPath: NSIndexPath, from tableView: UITableView)
}

extension SourceType {
    func insertTopRow(tableView: UITableView) {
        tableView.insertRowsAtIndexPaths([NSIndexPath(forRow: 0, inSection: 0)], withRowAnimation: .Fade)
    }
    
    func deleteRowAtIndexPath(indexPath: NSIndexPath, from tableView: UITableView){
        tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
    }
}