//
//  CustomTextView.swift
//
//
//  Created by Abishak R on 21/01/24.
//

import Foundation
import SwiftUI

public struct CustomTextView: Equatable{
    
    public var title: String
    public var color: Color
    public var font: Font
    
    public init(title: String, color: Color, font: Font) {
        self.title = title
        self.color = color
        self.font = font
    }
}

public struct CustomFloatingView {
    
    public var leftLabel: CustomTextView
    public var rightLabel: CustomTextView
    
    public init(leftLabel: CustomTextView, rightLabel: CustomTextView) {
        self.leftLabel = leftLabel
        self.rightLabel = rightLabel
    }
}

extension CustomFloatingView: Hashable {
    var identifier: String {
        return UUID().uuidString
    }
    
    public func hash(into hasher: inout Hasher) {
            return hasher.combine(identifier)
        }
    
}
