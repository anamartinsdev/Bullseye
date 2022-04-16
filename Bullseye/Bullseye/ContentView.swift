//
//  ContentView.swift
//  Bullseye
//
//  Created by Ana Carolina Martins Pessoa on 16/04/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
                Text("🎯🎯🎯 \n Put the BullSEye as close as you can to")
                    .padding()
            Text("89")
            HStack {
                Text("1")
                Slider(value: .constant(70), in: 1.0...100.0)
                Text("100")
            }
            Button(action: {}) {
                Text("Hit me")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
    }
}
