// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

struct FABModifier: ViewModifier {
    let icon: Image
    let color: Color
    let iconColor: Color?
    let shapeStyle: ShapeStyle?
    let radius: CGFloat?
    var size: CGFloat = 56
    var margin: CGFloat = 16
    let action: () -> Void
    
    init(icon: Image, color: Color, iconColor: Color? = .white, shapeStyle: ShapeStyle? = .circle, radius: CGFloat? = 1, action: @escaping () -> Void) {
        self.icon = icon
        self.color = color
        self.iconColor = iconColor
        self.shapeStyle = shapeStyle
        self.action = action
        self.radius = radius
    }
    
    func body(content: Content) -> some View {
        ZStack {
            content
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    button()
                        .offset(x: -margin, y: -margin)
                }
            }
        }
    }
    
    private func button() -> some View {
        icon
            .imageScale(.large)
            .bold()
            .foregroundColor(iconColor)
            .frame(width: size, height: size)
            .background(backgroundShape.fill(color))
            .shadow(radius: radius!)
            .onTapGesture(perform: action)
    }
    
    private var backgroundShape: AnyShape {
        switch shapeStyle {
        case .circle:
            return AnyShape(Circle())
        case .roundedRectangle(let cornerRadius):
            return AnyShape(RoundedRectangle(cornerRadius: cornerRadius))
        case .none:
            return AnyShape(Circle())
        }
    }
}

