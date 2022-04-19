//
//  BackgroundView.swift
//  Bullseye
//
//  Created by Ana Carolina Martins Pessoa on 18/04/22.
//

import SwiftUI

struct BackgroundView: View {
    @Binding var game: Game
    
    var body: some View {
        VStack {
            TopView(game: $game)
        }
        .padding()
        .background(Color("BackgroundColor").edgesIgnoringSafeArea(.all))
    }
}

struct TopView: View {
    @Binding var game: Game
    
    var body: some View {
        HStack {
        RoundedImageViewStroked(systemName: "arrow.counterclockwise")
            Spacer()
        RoundedImageViewFilled(systemName: "list.dash")
        }
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(game: .constant(Game()))
    }
}
