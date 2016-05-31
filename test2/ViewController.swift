//
//  ViewController.swift
//  test2
//
//  Created by run on 16/5/31.
//  Copyright © 2016年 run. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.initView();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initView() {
        //NSLog("%s", "hello world");
        //print("hello world");
        
        // UILabel
        //var label_a = UILabel();
        //label_a.frame = CGRectMake(<#T##x: CGFloat##CGFloat#>, <#T##y: CGFloat##CGFloat#>, <#T##width: CGFloat##CGFloat#>, <#T##height: CGFloat##CGFloat#>)
        
//        let alert_a = UIAlertControllerStyle();
//        alert_a.title = "弹窗";
//        alert_a.message = "hello world";
//        alert_a.addButtonWithTitle("确定");
//        alert_a.show();
        
        // 创建button
        let button = UIButton(type: UIButtonType.Custom);
        button.frame = CGRectMake(50, 100, 150, 50);
        button.backgroundColor = UIColor.redColor();
        button.setTitle("点击显示弹窗", forState: UIControlState.Normal);
        // 传递触摸对象(点击事件)
        button.addTarget(self, action: #selector(ViewController.buttonPressed(_:)), forControlEvents: UIControlEvents.TouchUpInside);
        
        self.view.addSubview(button);
    }
    
    func buttonPressed(sender: UIButton)  {
        showAlertDefault();
    }
    
    // 弹窗
    func showAlertDefault() {
        let alertController = UIAlertController(title: "弹窗标题", message: "窗体，这个是UIAlertController的默认样式",  preferredStyle: UIAlertControllerStyle.Alert);
        
        let okAction = UIAlertAction(title: "好的", style: UIAlertActionStyle.Default, handler: nil);
        
        alertController.addAction(okAction);
        
        self.presentViewController(alertController, animated: true, completion: nil);
    }


}

