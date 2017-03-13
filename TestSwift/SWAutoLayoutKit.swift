//
//  SWAutoLayoutKit.swift
//  AiBa
//
//  Created by Stan Wu on 15/9/1.
//
//

import Foundation
import UIKit

extension UIView{
    func adoptAutoLayout(){
        if self.responds(to: #selector(setter: UIView.translatesAutoresizingMaskIntoConstraints)){
            self.translatesAutoresizingMaskIntoConstraints = false
        }
    }
}

extension NSLayoutConstraint{
    class func constraintsWithVisualFormat(_ format: String, views: [String : AnyObject]) -> [AnyObject]{
        return NSLayoutConstraint.constraints(withVisualFormat: format, options: [], metrics: nil, views: views)
    }
    
    class func squareConstraint(_ view: UIView) -> NSLayoutConstraint{
        return NSLayoutConstraint(item: view, attribute: .width, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 1.0, constant: 0)
    }
    
    class func heightConstraint(_ view: UIView,height: CGFloat) -> NSLayoutConstraint{
        return NSLayoutConstraint(item: view, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 0, constant: height)
    }
    
    class func widthConstraint(_ view: UIView,width: CGFloat) -> NSLayoutConstraint{
        return NSLayoutConstraint(item: view, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 0, constant: width)
    }
    
    class func equalConstraint(_ view1: UIView,attribute1: NSLayoutAttribute,view2: UIView?,attribute2: NSLayoutAttribute) -> NSLayoutConstraint{
        return NSLayoutConstraint.equalConstraint(view1, attribute1: attribute1, view2: view2, attribute2: attribute2, constant: 0)
    }
    
    class func equalConstraint(_ view1: UIView,attribute1: NSLayoutAttribute,view2: UIView?,attribute2: NSLayoutAttribute,constant: CGFloat) -> NSLayoutConstraint{
        return NSLayoutConstraint.equalConstraint(view1,attribute1: attribute1,view2: view2,attribute2: attribute2,multiplier: 1.0,constant: constant)
    }
    
    class func equalConstraint(_ view1: UIView,attribute1: NSLayoutAttribute,view2: UIView?,attribute2: NSLayoutAttribute,multiplier: CGFloat,constant: CGFloat) -> NSLayoutConstraint{
        return NSLayoutConstraint(item: view1, attribute: attribute1, relatedBy: .equal, toItem: view2, attribute: attribute2, multiplier: multiplier, constant: constant)
    }
    
    class func ratioConstraint(_ view: UIView,ratio: CGFloat) -> NSLayoutConstraint{
        return NSLayoutConstraint(item: view, attribute: .width, relatedBy: .equal, toItem: view, attribute: .height, multiplier: ratio, constant: 0)
    }
    
    
}
