//  LGNeumorphismView.swift
//
//  Created by Ludovic Grimbert on 01/06/2020.
//  Copyright © 2020 ludovic grimbert. All rights reserved.
//

import Foundation
import SwiftUI

public struct LGNeumorphismView: View {
    
    var style: LGNeumorphismStyle
    var level: LGNeumorphismLevel
    var vision:LGNeumorphismVision
    let width: CGFloat
    let height: CGFloat
    let color: Color
    var shadowColorPrimary: Color = Color.black
    var shadowColorSecondary: Color = Color.white
    
    public var body: some View {
        switch (level, vision) {
        case (.high,.shadow): ShapeHighShadow(style: style,
                                              width: width,
                                              height: height,
                                              color: color,
                                              shadowColorPrimary: shadowColorPrimary,
                                              shadowColorSecondary: shadowColorSecondary)
        case (.high,.deep): ShapeHighDeep(style: style,
                                          width: width,
                                          height: height,
                                          color: color,
                                          shadowColorPrimary: shadowColorPrimary)
        case (.low,.shadow): ShapeLowShadow(style: style,
                                            width: width,
                                            height: height,
                                            color: color,
                                            shadowColorPrimary: shadowColorPrimary,
                                            shadowColorSecondary: shadowColorSecondary)
        default:
            AnyView(EmptyView())
        }
    }
    
    public static func getShape(style: LGNeumorphismStyle) -> some Shape {
        switch style {
        case .roundedRectangle(let cornerRadius):
            return AnyShape(RoundedRectangle(cornerRadius: cornerRadius))
        case .circle:
            return AnyShape(Circle())
        case .triangle:
            return AnyShape(Triangle())
        }
    }
}


