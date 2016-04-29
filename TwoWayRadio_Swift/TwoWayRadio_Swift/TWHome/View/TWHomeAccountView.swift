//
//  TWHomeAccountView.swift
//  TwoWayRadio_Swift
//
//  Created by LuoTuxiu on 16/4/21.
//  Copyright © 2016年 sd. All rights reserved.
//

import UIKit

class TWHomeAccountView: UIView {

    @IBOutlet weak var accountImage: UIImageView!
    @IBOutlet weak var accountName: UILabel!
    @IBOutlet weak var accountStatusBtn: UIButton!
    @IBOutlet weak var connectBtn: UIButton!

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        //        fatalError("init(coder:) has not been implemented")
    }
    
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
