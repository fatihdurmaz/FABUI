//
//  File.swift
//  
//
//  Created by Fatih Durmaz on 7.06.2024.
//

import SwiftUI

extension View {
    func fab(
        icon: Image,
        iconColor: Color? = .white,
        color: Color,
        shapeStyle: ShapeStyle? = .circle,
        radius: CGFloat? = 1,
        action: @escaping () -> Void ) -> some View {
            self.modifier(FABModifier(icon: icon, color: color, iconColor: iconColor, shapeStyle: shapeStyle, radius: radius, action: action))
        }
}
