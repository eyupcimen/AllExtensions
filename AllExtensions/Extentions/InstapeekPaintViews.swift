//
//  easypeekPaintViews.swift
//  EasyPeek
//
//  Created by Huseyin VURAL on 1.07.2018.
//  Copyright © 2018 Sekizbit. All rights reserved.
//
//  Generated by PaintCode
//  http://www.paintcodeapp.com
//
//  This code was generated by Trial version of PaintCode, therefore cannot be used for commercial purposes.
//



import UIKit

public class easypeekPaintViews : NSObject {

    @objc dynamic public class func waveView(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 87, height: 37), resizing: ResizingBehavior = .aspectFit, centerPoint: CGFloat = 61, leftPoint: CGFloat = 60, rightPoint: CGFloat = 61) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 87, height: 37), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 87, y: resizedFrame.height / 37)
        
        
        
        //// Image Declarations
        let screenshot_1530347730 = UIImage(named: "dummyPostPhoto")!
        
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 0, y: 0))
        bezierPath.addLine(to: CGPoint(x: 86.99, y: 0))
        bezierPath.addLine(to: CGPoint(x: 86.99, y: (rightPoint - 29.8871615269)))
        bezierPath.addCurve(to: CGPoint(x: 67.77, y: 35.7), controlPoint1: CGPoint(x: 86.99, y: (rightPoint - 29.8871615269)), controlPoint2: CGPoint(x: 88, y: 38.76))
        bezierPath.addCurve(to: CGPoint(x: 44.51, y: (centerPoint - 29.8871615269)), controlPoint1: CGPoint(x: 58.88, y: 34.36), controlPoint2: CGPoint(x: 50.96, y: (centerPoint - 29.8871615269) + 0.16))
        bezierPath.addCurve(to: CGPoint(x: 23.27, y: 35.7), controlPoint1: CGPoint(x: 36.28, y: (centerPoint - 29.8871615269) - 0.21), controlPoint2: CGPoint(x: 30.07, y: 33.99))
        bezierPath.addCurve(to: CGPoint(x: 0, y: (leftPoint - 29.9072545915)), controlPoint1: CGPoint(x: 11.13, y: 38.76), controlPoint2: CGPoint(x: 0, y: (leftPoint - 29.9072545915) + 6.12))
        bezierPath.addCurve(to: CGPoint(x: 0, y: 0), controlPoint1: CGPoint(x: 0, y: (leftPoint - 29.9072545915) - 6.12), controlPoint2: CGPoint(x: 0, y: 0))
        bezierPath.close()
        context.saveGState()
        bezierPath.addClip()
        context.translateBy(x: 0, y: 0)
        context.scaleBy(x: 1, y: -1)
        context.translateBy(x: 0, y: -screenshot_1530347730.size.height)
        context.draw(screenshot_1530347730.cgImage!, in: CGRect(x: 0, y: 0, width: screenshot_1530347730.size.width, height: screenshot_1530347730.size.height))
        context.restoreGState()

    }
    
    @objc dynamic public class func waveViewAlpha(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 87, height: 37), resizing: ResizingBehavior = .aspectFit, centerPoint: CGFloat = 61, leftPoint: CGFloat = 60, rightPoint: CGFloat = 61) -> UIBezierPath{
        //// General Declarations
        //let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        //context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 87, height: 37), target: targetFrame)
        //context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        //context.scaleBy(x: resizedFrame.width / 87, y: resizedFrame.height / 37)
        
        
        //// Color Declarations
        let color5 = UIColor(red: 0.242, green: 0.330, blue: 0.608, alpha: 0.512)
        
        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: 0, y: 0))
        bezier2Path.addLine(to: CGPoint(x: 86.99, y: 0))
        bezier2Path.addLine(to: CGPoint(x: 86.99, y: (rightPoint - 29.8871615269)))
        bezier2Path.addCurve(to: CGPoint(x: 67.77, y: 35.7), controlPoint1: CGPoint(x: 86.99, y: (rightPoint - 29.8871615269)), controlPoint2: CGPoint(x: 88, y: 38.76))
        bezier2Path.addCurve(to: CGPoint(x: 44.51, y: (centerPoint - 29.8871615269)), controlPoint1: CGPoint(x: 58.88, y: 34.36), controlPoint2: CGPoint(x: 50.96, y: (centerPoint - 29.8871615269) + 0.16))
        bezier2Path.addCurve(to: CGPoint(x: 23.27, y: 35.7), controlPoint1: CGPoint(x: 36.28, y: (centerPoint - 29.8871615269) - 0.21), controlPoint2: CGPoint(x: 30.07, y: 33.99))
        bezier2Path.addCurve(to: CGPoint(x: 0, y: (leftPoint - 29.9072545915)), controlPoint1: CGPoint(x: 11.13, y: 38.76), controlPoint2: CGPoint(x: 0, y: (leftPoint - 29.9072545915) + 6.12))
        bezier2Path.addCurve(to: CGPoint(x: 0, y: 0), controlPoint1: CGPoint(x: 0, y: (leftPoint - 29.9072545915) - 6.12), controlPoint2: CGPoint(x: 0, y: 0))
        bezier2Path.close()
        color5.setFill()
        bezier2Path.fill()
        
        return bezier2Path
        //context.restoreGState()
        
    }




    @objc(easypeekPaintViewsResizingBehavior)
    public enum ResizingBehavior: Int {
        case aspectFit /// The content is proportionally resized to fit into the target rectangle.
        case aspectFill /// The content is proportionally resized to completely fill the target rectangle.
        case stretch /// The content is stretched to match the entire target rectangle.
        case center /// The content is centered in the target rectangle, but it is NOT resized.

        public func apply(rect: CGRect, target: CGRect) -> CGRect {
            if rect == target || target == CGRect.zero {
                return rect
            }

            var scales = CGSize.zero
            scales.width = abs(target.width / rect.width)
            scales.height = abs(target.height / rect.height)

            switch self {
                case .aspectFit:
                    scales.width = min(scales.width, scales.height)
                    scales.height = scales.width
                case .aspectFill:
                    scales.width = max(scales.width, scales.height)
                    scales.height = scales.width
                case .stretch:
                    break
                case .center:
                    scales.width = 1
                    scales.height = 1
            }

            var result = rect.standardized
            result.size.width *= scales.width
            result.size.height *= scales.height
            result.origin.x = target.minX + (target.width - result.width) / 2
            result.origin.y = target.minY + (target.height - result.height) / 2
            return result
        }
    }
}
