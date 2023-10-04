//
//  ContentView.swift
//  Flexible Text
//
//  Created by Николай Игнатов on 04.10.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var containerWidth: CGFloat = 300
    
    var body: some View {
        VStack {
            VStack {
                Text("Марафон ")
                    .fontWeight(.regular)
                    .foregroundColor(.gray)
                + Text("по SwiftUI ")
                    .fontWeight(.regular)
                + Text("«Отцовский пинок»")
                    .bold()
                    .font(.title)
                    .foregroundColor(.blue)
            }
            .frame(width: containerWidth)
            .border(.red)
            .multilineTextAlignment(.leading)
            
            Slider(value: $containerWidth,
                   in: 100...300,
                   step: 1)
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
