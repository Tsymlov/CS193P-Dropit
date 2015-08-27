//
//  BazierPathView.swift
//  Dropit
//
//  Created by Alexey Tsymlov on 8/27/15.
//  Copyright (c) 2015 Alexey Tsymlov. All rights reserved.
//

import UIKit

class BazierPathView: UIView {
    
    private var bezierPaths = [String: UIBezierPath]()
    
    func setPath(path: UIBezierPath?, named name: String){
        bezierPaths[name] = path
        setNeedsDisplay()
    }

    override func drawRect(rect: CGRect) {
        for (_, path) in bezierPaths {
            path.stroke()
        }
    }

}
