//
//  TWLoginViewController.swift
//  TwoWayRadio_Swift
//
//  Created by LuoTuxiu on 16/4/10.
//  Copyright © 2016年 sd. All rights reserved.
//

import UIKit

class TWLoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title =  "登录"
        // Do any additional setup after loading the view.
        
        self.navigationItem.rightBarButtonItem =  UIBarButtonItem.init(title: "设置服务器", style: .Plain, target: self, action:#selector(TWLoginViewController.setServer))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func setServer() {
        print("setServer11")
        let alertVc = UIAlertController.init(title: "设置服务器", message: nil, preferredStyle: UIAlertControllerStyle.Alert)
        
        let cancelAction = UIAlertAction.init(title: "取消", style: .Cancel) { (UIAlertAction) in
            print("cacel")
        }
        let doneAction = UIAlertAction.init(title: "确定", style: .Default) { (UIAlertAction) in
            print("done")
//            print(alertVc.textFields)
            for textfield in alertVc.textFields!{
                print("the content is \(textfield.text) and the tag is \(textfield.tag)")
            }
            
        }
        
        alertVc.addAction(cancelAction)
        alertVc.addAction(doneAction)
        
        alertVc.addTextFieldWithConfigurationHandler { (UITextField) in
            UITextField.placeholder = "请填写服务器地址"
            UITextField.tag  = 1
        }
        alertVc.addTextFieldWithConfigurationHandler { (UITextField) in
            UITextField.placeholder = "请填写服务器端口号"
            UITextField.tag = 2
        }
//        self.presentViewController(alertVc, animated: ) {
//            
//        }
        self.presentViewController(alertVc, animated: Bool.init()) { 
            
        }
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func login(sender: AnyObject) {
        print("login")
        let  appDelegate = UIApplication.sharedApplication().delegate
        appDelegate?.window!?.rootViewController = TWTabViewController()

    }
    

}
