//
//  ViewController.swift
//  weibo
//
//  Created by 庄丹丹 on 16/3/9.
//  Copyright © 2016年 庄丹丹. All rights reserved.
//

import UIKit

let  kRedirectURI = "https://api.weibo.com/oauth2/default.html"

class ViewController: UIViewController {

    @IBOutlet var login: UIButton!
    
    @IBAction func onLogin(sender: AnyObject) {
        let request = WBAuthorizeRequest.request() as? WBAuthorizeRequest
        request?.redirectURI = kRedirectURI
        request?.scope = "all"
        
        WeiboSDK.sendRequest(request)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

