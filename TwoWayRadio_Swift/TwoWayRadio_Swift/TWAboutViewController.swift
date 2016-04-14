//
//  TWAboutViewController.swift
//  TwoWayRadio_Swift
//
//  Created by LuoTuxiu on 16/4/13.
//  Copyright © 2016年 sd. All rights reserved.
//

import UIKit

class TWAboutViewController: YSCommonController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "关于"
        self.commonSetupTableView(UITableViewStyle.Grouped)
//        let aboutHeaderView = TWAboutHeaderView.init(frame: CGRect.init(x: 0, y: 0, width: self.view.width  , height: self.view.height))
        let aboutHeaderView = NSBundle.mainBundle().loadNibNamed("TWAboutHeaderView", owner: nil, options: nil).first as! TWAboutHeaderView
        aboutHeaderView.frame = CGRect.init(x: 0, y: 0, width: self.view.width  , height: 200)
        self.tableView.tableHeaderView = aboutHeaderView
        self.setupGroup0()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func setupGroup0() {
        var group = self.addGroup()
        var about = YSArrowItem.init(title: "官方网站", rightImage:"")
        group.items =  [about]

        
        
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let group = groups()[indexPath.row]
        let  webViewVc = TWWebViewController()
        self.navigationController?.pushViewController(webViewVc, animated: true)
        
        
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
