//
//  ViewController.swift
//  OC2Swift
//
//  Created by shendong on 2018/9/18.
//  Copyright © 2018年 shendong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private var button: UIButton{
        let button = UIButton(type: .custom)
        button.setTitle("show Smile", for: .normal)
        button.frame = CGRect(x: 50, y: 50, width: view.bounds.size.width - 100, height: 50)
        button.backgroundColor = UIColor.themeColor()
        button.addTarget(self, action: #selector(didTapAction(sender:)), for: .touchUpInside)
        return button
    }
    private var closeButton: UIButton{
        let button = UIButton(type: .custom)
        button.frame = CGRect(x: 50, y: 150, width: view.bounds.size.width - 100, height: 50)
        button.setTitle("close smile", for: .normal)
        button.backgroundColor = UIColor.darkGray
        button.addTarget(self, action: #selector(didCloseAction(sender:)), for: .touchUpInside)
        return button
    }
    weak var smileView: SmileView?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.addSubview(button)
        view.addSubview(closeButton)
        
        let sandwich = Sandwich()
        print(sandwich.name)
        let sandwich2 = Sandwich(name: "sandwich")
        print(sandwich2?.name)
    }

    @objc func didTapAction(sender: Any){
        self.view.backgroundColor = UIColor.themeColor()
//        let smile = SmileView(frame: CGRect(x: 50, y: closeButton.frame.maxY + 10, width: view.bounds.size.width-100, height: 200))
//        smile.show(in: view)
//        self.smileView = smile
        let third = ThirdViewController()
        self.navigationController?.show(third, sender: nil)
    }
    @objc func didCloseAction(sender: Any){
        self.smileView?.dismiss()
    }
}

