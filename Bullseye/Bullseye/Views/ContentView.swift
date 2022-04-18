//
//  ContentView.swift
//  Bullseye
//
//  Created by Ana Carolina Martins Pessoa on 16/04/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible = false
    @State private var sliderValue = 50.0
    @State private var game = Game()
    
    var body: some View {
        VStack {
            Text("🎯🎯🎯 \n Put the BullSEye as close as you can to")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
            Text(String(game.target))
                .font(.largeTitle)
                .kerning(-1.0)
                .fontWeight(.black)
            HStack {
                Text("1")
                    .font(.body)
                    .fontWeight(.bold)
                   
                Slider(value: self.$sliderValue, in: 1.0...100.0)
                Text("100")
                    .font(.body)
                    .fontWeight(.bold)
            }
            Button(action: {
                alertIsVisible
                 = true
            }) {
                Text("Hit me")
            }
            .alert("Hello there!", isPresented: $alertIsVisible) {
              Button("Awesome!") { }
            } message: {
                let roundedValue = Int(sliderValue.rounded())
                Text("The slider value is  \(roundedValue). \n" + "You scored \(game.points(sliderValue: roundedValue)) points this round.")
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
