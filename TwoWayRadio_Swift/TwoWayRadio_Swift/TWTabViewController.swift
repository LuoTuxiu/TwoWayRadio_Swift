//
//  TWTabViewController.swift
//  TwoWayRadio_Swift
//
//  Created by LuoTuxiu on 16/4/11.
//  Copyright © 2016年 sd. All rights reserved.
//

import UIKit

class TWTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor  = UIColor.whiteColor()
        
        let firstVc = UIViewController()
        let firstNav = UINavigationController(rootViewController:firstVc)
        firstVc.view.backgroundColor = UIColor.redColor()
        
        
        let secondVc = UIViewController()
        secondVc.view.backgroundColor = UIColor.greenColor()
        let  secondNav = UINavigationController(rootViewController:secondVc)
        
        self.viewControllers = [firstNav,secondNav]
        
        
        
        
        
        
        
        
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
