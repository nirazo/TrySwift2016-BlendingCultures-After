//
//  Hand.swift
//  BlendingCultures-After
//
//  Created by Kenzo on 2016/03/05.
//  Copyright © 2016年 Karuta. All rights reserved.
//

import UIKit

struct Hand: DataType {
    
    private var cards: [Card] = []
    
    var numberOfItems: Int {
        return cards.count
    }
    
    subscript(index: Int) -> Card {
        return cards[index]
    }
    
    private func insertItem(card: Card, atIndex index: Int) -> Hand {
        var mutableCards = cards
        mutableCards.insert(card, atIndex: index)
        return Hand(cards: mutableCards)
    }
    
    func addNewItemAtIndex(index: Int) -> Hand {
        return insertItem(Card.randomCard(), atIndex: index)
    }
    
    func deleteItemAtIndex(index: Int) -> Hand {
        var mutableCards = cards
        mutableCards.removeAtIndex(index)
        return Hand(cards: mutableCards)
    }
    
    func moveItem(fromIndex: Int, toIndex: Int) -> Hand {
        return deleteItemAtIndex(fromIndex)
            .insertItem(cards[fromIndex], atIndex: toIndex)
    }

}