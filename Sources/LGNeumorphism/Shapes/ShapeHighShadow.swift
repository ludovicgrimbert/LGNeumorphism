//
//  ShapeHighShadow.swift
//  
//
//  Created by Ludovic Grimbert on 07/12/2020.
//

import Foundation
import SwiftUI

public struct ShapeHighShadow: View {
    public let style : LGNeumorphismStyle
    public let width: CGFloat
    public let height: CGFloat
    public let color: Color
    public var shadowColorPrimary: Color = Color.black
    public var shadowColorSecondary: Color = Color.white
    
    public var body: some View {
        LGNeumorphismView.getShape(style: style)
            .fill(color)
            .frame(width: width, height: height)
            .shadow(color: shadowColorPrimary.opacity(0.2), radius: 10, x: 10, y: 10)
            .shadow(color: shadowColorSecondary.opacity(0.7), radius: 10, x: -5, y: -5)
    }
}
