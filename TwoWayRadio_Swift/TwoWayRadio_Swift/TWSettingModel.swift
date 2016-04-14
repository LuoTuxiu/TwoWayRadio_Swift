//
//  TWSettingModel.swift
//  TwoWayRadio_Swift
//
//  Created by LuoTuxiu on 16/4/13.
//  Copyright © 2016年 sd. All rights reserved.
//

import UIKit

class TWSettingModel: NSObject {
    var imageName:String?
    var title:String?
    var detailTitle:String?
    
    
    init(imageName:String,title:String,detailTitle:String) {
        self.imageName = imageName
        self.title = title
        self.detailTitle  = detailTitle
    }
  
}
