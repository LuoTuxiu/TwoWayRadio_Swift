//
//  TWLoginViewController.swift
//  TwoWayRadio_Swift
//
//  Created by LuoTuxiu on 16/4/10.
//  Copyright © 2016年 sd. All rights reserved.
//

import UIKit
import RealmSwift
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
        
        let doneAction = UIAlertAction.init(title: "保存", style: .Default) { (UIAlertAction) in
            print("done")
//            print(alertVc.textFields)
            let realm =  try! Realm()
            let results = realm.objects(TWAccountModel)
            var account:TWAccountModel?
            if results.count == 0{
                account  = TWAccountModel()
                try!realm.write({
                    realm.add(account!)
                })
                
            }else{
                account = results.first
            }
            
            
            for textfield in alertVc.textFields!{
                print("the content is \(textfield.text) and the tag is \(textfield.tag)")
                switch textfield.tag {
                case 1:
                    // 获取默认的 Realm 数据库
                    if !textfield.text!.isEmpty
                    {
                        try!realm.write({
                            account!.serverIp =  textfield.text!
                            
                        })
                    }
                case 2:
                    // 获取默认的 Realm 数据库
                    if !textfield.text!.isEmpty
                    {
                        try!realm.write({
                            

                            account!.serverPort  = textfield.text!
                            
                            
                        })
                    }
                default:
                    break
                    
                }
                
                
                
                
            }
            MBProgressHUD.showSuccess("保存成功", toView: self.view)
            
        }
        
        alertVc.addAction(cancelAction)
        alertVc.addAction(doneAction)
        
        let realm =  try! Realm()
        let results = realm.objects(TWAccountModel)
        var account:TWAccountModel?
        if results.count != 0{
            account = results.first
        }

        
        alertVc.addTextFieldWithConfigurationHandler { (UITextField) in
            if results.count != 0{
                account = results.first
                UITextField.placeholder = "服务器地址:".stringByAppendingString((account?.serverIp)!)
            }else{
                UITextField.placeholder = "请填写服务器地址"
            }
            UITextField.tag  = 1
        }
        alertVc.addTextFieldWithConfigurationHandler { (UITextField) in
            if results.count != 0{
                account = results.first
                UITextField.placeholder = "服务器端口号:".stringByAppendingString((account?.serverPort)!)
            }else{
                UITextField.placeholder = "请填写服务器端口号"
            }
        
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
