//
//  ViewController.swift
//  ProjectCarthage
//
//  Created by ZhangChunpeng on 16/12/28.
//  Copyright © 2016年 zhcpeng. All rights reserved.
//

import UIKit

import SnapKit
import ReactiveCocoa

class ViewController: UIViewController {
    
    private lazy var button: UIButton = {
        let button = UIButton(type: .custom)
        button.backgroundColor = UIColor.red
        button.adjustsImageWhenHighlighted = false
        button.adjustsImageWhenDisabled = false
        button.reactive.controlEvents(.touchUpInside).observe { (_) in
            print("111")
        }
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.addSubview(button)
        button.snp.makeConstraints { (make) in
            make.edges.equalTo(view)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

