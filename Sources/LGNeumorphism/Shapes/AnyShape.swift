//
//  AnyShape.swift
//  
//
//  Created by Ludovic Grimbert on 07/12/2020.
//

import Foundation
import SwiftUI

public struct AnyShape: Shape {
   public init<S: Shape>(_ wrapped: S) {
        _path = { rect in
            let path = wrapped.path(in: rect)
            return path
        }
    }
    
    public func path(in rect: CGRect) -> Path {
        return _path(rect)
    }
    
    private let _path: (CGRect) -> Path
}

public struct Triangle: Shape {
    public func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        return path
    }
}
