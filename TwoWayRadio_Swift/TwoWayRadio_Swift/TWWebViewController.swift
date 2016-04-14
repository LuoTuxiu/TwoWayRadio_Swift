//
//  TWWebViewController.swift
//  TwoWayRadio_Swift
//
//  Created by LuoTuxiu on 16/4/14.
//  Copyright © 2016年 sd. All rights reserved.
//

import UIKit

class TWWebViewController: UIViewController,UIWebViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        let webView = UIWebView.init(frame: self.view.frame)
        
        let request = NSURLRequest.init(URL: NSURL.init(string: "www.baidu.com")!)
        webView.loadRequest(request)
        webView.delegate =  self
        self.view.addSubview(webView)
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func webViewDidStartLoad(webView: UIWebView) {
        print("did")
    }

    func webViewDidFinishLoad(webView: UIWebView) {
        print("finish")
    }
    func webView(webView: UIWebView, didFailLoadWithError error: NSError?) {
        print(error)
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
