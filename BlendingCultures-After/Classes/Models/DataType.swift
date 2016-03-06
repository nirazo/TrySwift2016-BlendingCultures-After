//
//  DataType.swift
//  BlendingCultures-After
//
//  Created by Kenzo on 2016/03/05.
//  Copyright © 2016年 Karuta. All rights reserved.
//

protocol DataType {
    var numberOfItems: Int{ get }
    func addNewItemAtIndex(index: Int) -> Self
    func deleteItemAtIndex(index: Int) -> Self
    func moveItem(fromIndex: Int, toIndex: Int) -> Self
}