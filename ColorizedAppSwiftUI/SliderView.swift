//
//  SliderView.swift
//  ColorizedAppSwiftUI
//
//  Created by Pavel Karunnyj on 13.06.2023.
//

import SwiftUI

struct ColorSliderView: View {
    @Binding var sliderValue: Double
    @State private var textValue = ""
    
    let tintColor: Color
    
    var body: some View {
        HStack {
            ColorValueTextView(colorValue: sliderValue)
            
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .tint(tintColor)
                .onChange(of: sliderValue) { newValue in
                    textValue = String(lround(sliderValue))
                }
        }
    }
}

struct ColorSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSliderView(sliderValue: .constant(127), tintColor: .red)
    }
}
