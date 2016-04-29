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
        homeAccountView.y = 64
        homeAccountView.height = 200
        self.view.addSubview(homeAccountView)
        
        var  radioBtn = UIButton.init(type: UIButtonType.Custom)
        radioBtn.frame = CGRectMake(0, 300, 200, 100)
        radioBtn.centerY = UIScreen.mainScreen().bounds.height / 2
        radioBtn.centerX = UIScreen.mainScreen().bounds.width / 2
        radioBtn.setImage(UIImage.init(named: "applicationIcon"), forState: UIControlState.Normal)
        
        self.view.addSubview(radioBtn)
        
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
