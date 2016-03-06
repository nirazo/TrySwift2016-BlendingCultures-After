//
//  HandDataSource.swift
//  BlendingCultures-After
//
//  Created by Kenzo on 2016/03/06.
//  Copyright © 2016年 Karuta. All rights reserved.
//

import UIKit

class HandDataSource: DataSource {
    init() {
        super.init(dataObject: Hand())
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCellWithIdentifier("cardCell", forIndexPath: indexPath) as? CardCell,
        hand = dataObject as? Hand else {
            fatalError("Could not create CardCell")
        }
        cell.fillWith(hand[indexPath.row])
        return cell
    }
    
    override var conditionForAdding: Bool {
        return dataObject.numberOfItems < 5
    }
}