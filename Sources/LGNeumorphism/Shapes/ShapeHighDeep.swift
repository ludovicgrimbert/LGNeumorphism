//
//  ShapeHighDeep.swift
//  
//
//  Created by Ludovic Grimbert on 07/12/2020.
//

import Foundation
import SwiftUI

public struct ShapeHighDeep: View {
    public let style : LGNeumorphismStyle
    public let width: CGFloat
    public let height: CGFloat
    public let color: Color
    public var shadowColorPrimary: Color
    
    public var shape: some Shape {
        return LGNeumorphismView.getShape(style: style)
    }
    
    public var body: some View {
        shape
            .fill(color)
            .frame(width: width, height: height)
            .overlay(
                shape
                    .stroke(Color.gray, lineWidth: 4)
                    .blur(radius: 4)
                    .offset(x: 2, y: 2)
                    .mask(shape.fill(LinearGradient(gradient: Gradient(colors: [shadowColorPrimary, Color.clear]), startPoint: .leading, endPoint: .trailing)))
            )
            .overlay(
                shape
                    .stroke(Color.white, lineWidth: 8)
                    .blur(radius: 4)
                    .offset(x: -2, y: -2)
                    .mask(shape.fill(LinearGradient(gradient: Gradient(colors: [Color.clear, shadowColorPrimary]), startPoint: .leading, endPoint: .trailing)))
            )
    }
}
