//
//  CardView.swift
//  FABExample
//
//  Created by Fatih Durmaz on 7.06.2024.
//

import SwiftUI
import FABUI

struct CardItem: Identifiable {
    let id = UUID()
    let title: String
    let description: String
}

struct CardView: View {
    @State private var items: [CardItem] = [
        CardItem(title: "Card Title 1", description: "This is a SwiftUI card example with native components."),
        CardItem(title: "Card Title 2", description: "This is a SwiftUI card example with native components."),
        CardItem(title: "Card Title 3", description: "This is a SwiftUI card example with native components."),
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    ForEach(items) { item in
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(.white)
                                .shadow(radius: 5)
                            
                            VStack {
                                Image(systemName: "swift")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 50, height: 50)
                                    .foregroundColor(.orange)
                                    .padding(.top, 20)
                                
                                Text(item.title)
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .padding(.top, 10)
                                
                                Text(item.description)
                                    .font(.body)
                                    .multilineTextAlignment(.center)
                                    .padding(.horizontal, 20)
                            }
                            .padding(.bottom, 10)
                        }
                        .padding(.vertical, 5)
                    }
                }
                .padding()
            }
            .fab(icon: Image(systemName: "plus"), iconColor: .white, color: .orange, shapeStyle: .roundedRectangle(cornerRadius: 16), radius: 5, action: {
                let newItem = CardItem(title: "New Card Title", description: "This is a newly added card.")
                items.append(newItem)
            })
            .navigationTitle("Cards")
        }
    }
}

#Preview {
    CardView()
}

