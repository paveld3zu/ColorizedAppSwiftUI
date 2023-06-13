//
//  ContentView.swift
//  ColorizedAppSwiftUI
//
//  Created by Pavel Karunnyj on 13.06.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var red = Double.random(in: 0...255)
    @State private var green = Double.random(in: 0...255)
    @State private var blue = Double.random(in: 0...255)
    
    var body: some View {
        
        ZStack {
            Color(red: 100 / 255, green: 100 / 255, blue: 100 / 255)
                .ignoresSafeArea()
            
            VStack {
                ColorView(red: red, green: green, blue: blue)
                    .padding([.top, .bottom], 13)
                
                ColorSliderView(sliderValue: $red, tintColor: .red)
                ColorSliderView(sliderValue: $green, tintColor: .green)
                ColorSliderView(sliderValue: $blue, tintColor: .blue)
                Spacer()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
