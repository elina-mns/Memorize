//
//  PieShape.swift
//  Memorize
//
//  Created by Elina Mansurova on 2021-09-20.
//

import SwiftUI

struct PieShape: Shape {
    var startAngle: Angle
    var endAngle: Angle
    
    func path(in rect: CGRect) -> Path {
        let center = CGPoint(x: rect.minX, y: rect.midY)
        let radius = min(rect.width, rect.height) / 2
        
        let start = CGPoint(
            x: center.x + radius * cos(CGFloat(startAngle.radians)),
            y: center.y + radius * sin(CGFloat(startAngle.radians))
        )
        
        var p = Path()
        p.move(to: center)
        return p
    }
}
