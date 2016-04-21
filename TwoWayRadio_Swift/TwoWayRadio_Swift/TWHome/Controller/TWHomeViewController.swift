//
//  TWHomeViewController.swift
//  TwoWayRadio_Swift
//
//  Created by LuoTuxiu on 16/4/13.
//  Copyright © 2016年 sd. All rights reserved.
//

import UIKit
import CocoaAsyncSocket

class TWHomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "首页"
        
        let homeAccountView = NSBundle.mainBundle().loadNibNamed("TWHomeAccountView", owner:nil, options:nil).first as! TWHomeAccountView
        homeAccountView.frame = self.view.frame
        homeAccountView.y = 64 + 20
        
        self.view.addSubview(homeAccountView)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
