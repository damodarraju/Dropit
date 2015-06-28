//
//  BezierPathView.swift
//  Dropit
//
//  Created by Raju on 24/06/2015.
//  Copyright (c) 2015 Damodar Gundu. All rights reserved.
//

import UIKit

class BezierPathView: UIView {

   private var bezierPaths = [String:UIBezierPath]()
    
    func setPath(path: UIBezierPath?, named name: String) {
        bezierPaths[name] = path
        setNeedsDisplay()
    }
    
   
    override func drawRect(rect: CGRect) {
        for(_, path) in bezierPaths{
            path.stroke()
        }
    }

}
