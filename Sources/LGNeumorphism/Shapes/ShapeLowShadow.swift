//
//  ShapeLowShadow.swift
//  
//
//  Created by Ludovic Grimbert on 07/12/2020.
//

import Foundation
import SwiftUI

public struct ShapeLowShadow: View {
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
            .shadow(color: shadowColorPrimary.opacity(0.2), radius: 3, x: 3, y: 3)
            .shadow(color: shadowColorSecondary.opacity(0.7), radius: 3, x: -1, y: -1)
    }
}
