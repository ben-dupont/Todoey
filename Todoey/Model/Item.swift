//
//  Item.swift
//  Todoey
//
//  Created by Benélo on 23/12/2018.
//  Copyright © 2018 ben. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var done: Bool = false
    @objc dynamic var dateCreated: Date = Date()
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
