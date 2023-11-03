//
//  progressBarView.swift
//  prgressbar
//
//  Created by Admin on 11/09/23.
//

import UIKit

import UIKit
class progressBarView : UIView {
    private var Layer = CAShapeLayer()
    private var progressLayer = CAShapeLayer()
     var startPoint = CGFloat(-Double.pi / 2)
     var endPoint = CGFloat(3 * Double.pi / 2)
    var input = 0.0
    
    
    
    func createpath(){
        var createpath = UIBezierPath(arcCenter: CGPoint(x: frame.size.width / 2.0, y: frame.size.height / 2.0), radius: 80, startAngle:startPoint, endAngle:endPoint, clockwise: true)
        
        Layer.path = createpath.cgPath
        Layer.fillColor = UIColor.clear.cgColor
        Layer.lineCap = .round
        Layer.lineWidth = 20.0
        Layer.strokeEnd = 1.0
        Layer.strokeColor = UIColor.black.cgColor
        layer.addSublayer(Layer)
        
        createpath = UIBezierPath(arcCenter: CGPoint(x: frame.size.width / 2.0, y: frame.size.height / 2.0), radius: 80, startAngle:startPoint , endAngle:  endPoint  , clockwise: true)
        
        progressLayer.path = createpath.cgPath
        progressLayer.fillColor = UIColor.clear.cgColor
        progressLayer.lineCap = .round
        progressLayer.lineWidth = 10.0
        progressLayer.strokeEnd = 0
        progressLayer.strokeColor = UIColor.red.cgColor
        layer.addSublayer(progressLayer)
        
    }
    func animation (duration:TimeInterval){
        let progressAnimation = CABasicAnimation(keyPath: "strokeEnd")
        progressAnimation.duration = duration
        progressAnimation.toValue = input * 0.01
        progressAnimation.fillMode = .forwards
        progressAnimation.isRemovedOnCompletion = false
        progressLayer.add(progressAnimation, forKey: "progressAnim")
    }
    
    
    
    
}
