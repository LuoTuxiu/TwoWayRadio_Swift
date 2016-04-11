//
//  TWAccountModel.swift
//  TwoWayRadio_Swift
//
//  Created by LuoTuxiu on 16/4/11.
//  Copyright © 2016年 sd. All rights reserved.
//

import Foundation
import RealmSwift

class TWAccountModel: Object {
    
// Specify properties to ignore (Realm won't persist these)
    dynamic var userName = ""
    dynamic var passWd = ""
    
    dynamic var serverIp = ""
    dynamic var serverPort = ""
    
    
    
    
//  override static func ignoredProperties() -> [String] {
//    return []
//  }
}
