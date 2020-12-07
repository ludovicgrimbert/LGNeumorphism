//
//  File.swift
//  
//
//  Created by Ludovic Grimbert on 07/12/2020.
//

import Foundation
import SwiftUI

public struct ShapeLowShadow: View {
    let style : LGNeumorphismStyle
    let width: CGFloat
    let height: CGFloat
    let color: Color
    var shadowColorPrimary: Color = Color.black
    var shadowColorSecondary: Color = Color.white
    
    public var body: some View {
        LGNeumorphismView.getShape(style: style)
            .fill(color)
            .frame(width: width, height: height)
            .shadow(color: shadowColorPrimary.opacity(0.2), radius: 3, x: 3, y: 3)
            .shadow(color: shadowColorSecondary.opacity(0.7), radius: 3, x: -1, y: -1)
    }
}
