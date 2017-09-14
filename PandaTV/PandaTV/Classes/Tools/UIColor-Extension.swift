//
//  UIColor-Extension.swift
//  PandaTV
//
//  Created by QinTing on 2017/9/14.
//  Copyright © 2017年 QinTing. All rights reserved.
//

import UIKit

extension UIColor {
    convenience init(r:CGFloat,g:CGFloat,b:CGFloat){
        self.init(red: r, green: g, blue: b, alpha: 1.0)
    }
    convenience init(gray:CGFloat){
       self.init(red: gray/255.0, green: gray/255.0, blue: gray/255.0, alpha: 1.0)
    }
    
    class func randomColor() -> UIColor {
        return UIColor(r: CGFloat(arc4random_uniform(256)), g: CGFloat(arc4random_uniform(256)), b: CGFloat(arc4random_uniform(256)))
    }
    
}
