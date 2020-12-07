//  LGNeumorphismView.swift
//
//  Created by Ludovic Grimbert on 01/06/2020.
//  Copyright © 2020 ludovic grimbert. All rights reserved.
//

import Foundation
import SwiftUI

public struct LGNeumorphismView: View {
    
    public var style: LGNeumorphismStyle
    public var level: LGNeumorphismLevel
    public var vision:LGNeumorphismVision
    public let width: CGFloat
    public let height: CGFloat
    public let color: Color
    public var shadowColorPrimary: Color = Color.black
    public var shadowColorSecondary: Color = Color.white
    
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


