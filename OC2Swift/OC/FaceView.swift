//
//  FaceView.swift
//  OC2Swift
//
//  Created by shendong on 2018/9/18.
//  Copyright © 2018年 shendong. All rights reserved.
//

import Foundation

@objc(FaceViewProtocol)
protocol FaceViewProtocol {
    func configureFaceView()
}
@objc
enum FaceViewType: Int {
    case smile  = 0
    case laugh  = 1
}

@objcMembers

class FaceView: UIView {
    var name: String?
    var delegate: FaceViewProtocol?
    var type: FaceViewType = .smile
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.cornerRadius = frame.size.width / 2
        self.layer.masksToBounds = true
        self.backgroundColor = UIColor.purple
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    func changeBackgroundColor() {
        self.backgroundColor = UIColor.green
    }
    @nonobjc func anotherFunc(cornerRadius: CGFloat){
        self.layer.cornerRadius = cornerRadius
        let sandWich = Sandwich()
        sandWich.preferences = Sandwich.Preferences()
        sandWich.preferences.isCrusty = true
        print(sandWich.preferences.isCrusty)
    }
    
}
class CryView: UIView {
    var name: String?
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    func cry() {
        print("Cry")
    }
}

class Fry {
    init() {}
    func fly() {
        print("fly")
    }
}
