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
        ZStack {
            Color("BackgroudColor")
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("🎯🎯🎯 \n Put the BullSEye as close as you can to".uppercased())
                    .bold()
                    .kerning(2.0)
                    .multilineTextAlignment(.center)
                    .lineSpacing(4.0)
                    .font(.footnote)
                    .foregroundColor(Color("TextColor"))
                
                Text(String(game.target))
                    .font(.largeTitle)
                    .kerning(-1.0)
                    .fontWeight(.black)
                HStack {
                    Text("1")
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundColor(Color("TextColor"))
                    Slider(value: self.$sliderValue, in: 1.0...100.0)
                    Text("100")
                        .font(.body)
                        .fontWeight(.bold)
                } .padding()
                    .foregroundColor(Color("TextColor"))
                Button(action: {
                    alertIsVisible
                     = true
                }) {
                    Text("Hit me".uppercased())
                        .font(.title3)
                        .bold()
                }
                .padding(20.0)
                .background(ZStack {
                    Color("ButtonColor")
                    LinearGradient(gradient: Gradient(colors:  [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
                })
                .foregroundColor(Color.white)
                .cornerRadius(21.0)
                .alert("Hello there!", isPresented: $alertIsVisible) {
                  Button("Awesome!") { }
                } message: {
                    let roundedValue = Int(sliderValue.rounded())
                    Text("The slider value is  \(roundedValue). \n" + "You scored \(game.points(sliderValue: roundedValue)) points this round.")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
          //  .preferredColorScheme(.dark)
            
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
            //.preferredColorScheme(.dark)
    }
}
