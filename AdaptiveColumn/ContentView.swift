//
//  ContentView.swift
//  AdaptiveColumn
//
//  Created by junxian428 on 20/10/2025.
//
import SwiftUI

struct ContentView: View {
    let items = Array(1...9)

    var body: some View {
        ScrollView {
            Text("Adaptive Layout Grid")
                .font(.title2)
                .bold()
                .padding(.top, 20)

            LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))], spacing: 12) {
                ForEach(items, id: \.self) { item in
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.green.opacity(0.2))
                        .frame(height: 80)
                        .overlay(Text("Cell \(item)").foregroundColor(.green))
                }
            }
            .padding()
        }
    }
}
