//
//  ListView.swift
//  FABExample
//
//  Created by Fatih Durmaz on 7.06.2024.
//

import SwiftUI

struct ListView: View {
    
    let items = [
        ("Kerem Durmaz", "john@example.com"),
        ("Dean Winchester", "jane@example.com"),
        ("Sam Winchester", "michael@example.com"),
        ("Emily Williams", "emily@example.com"),
        ("William Brown", "william@example.com"),
        ("Olivia Jones", "olivia@example.com"),
        ("James Garcia", "james@example.com"),
        ("Isabella Martinez", "isabella@example.com"),
        ("Benjamin Robinson", "benjamin@example.com"),
        ("Sophia Clark", "sophia@example.com"),
        ("Jacob Lewis", "jacob@example.com"),
        ("Emma Lee", "emma@example.com"),
        ("Alexander Walker", "alexander@example.com"),
        ("Mia Hall", "mia@example.com"),
        ("Ethan Young", "ethan@example.com"),
        ("Charlotte Wright", "charlotte@example.com"),
        ("Daniel King", "daniel@example.com"),
        ("Amelia Green", "amelia@example.com"),
        ("Matthew Hill", "matthew@example.com"),
        ("Ava Adams", "ava@example.com"),
        ("William Scott", "william@example.com"),
        ("Liam Perez", "liam@example.com"),
        ("Abigail Rodriguez", "abigail@example.com"),
        ("David Martinez", "david@example.com"),
        ("Sophia Thomas", "sophia@example.com"),
        ("Michael Taylor", "michael@example.com"),
        ("Olivia Hernandez", "olivia@example.com"),
        ("Elijah Moore", "elijah@example.com"),
        ("Avery Nelson", "avery@example.com")
    ]
    
    var body: some View {
        NavigationStack {
            VStack {
                List(0..<items.count, id: \.self) { index in
                    HStack(alignment: .center) {
                        Text("\(index + 1)")
                            .font(.title2)
                            .padding()
                            .foregroundStyle(.white)
                            .background(.blue)
                            .clipShape(.circle)
                        
                        VStack (alignment: .leading) {
                            Text(items[index].0)
                                .bold()
                            Text(items[index].1)
                        }
                        Spacer()
                        Image(systemName: "arrow.right.circle")
                            .font(.title)
                    }
                    
                }
            }
            .navigationTitle("Peoples")
        }
    }
}

#Preview {
    ListView()
}
