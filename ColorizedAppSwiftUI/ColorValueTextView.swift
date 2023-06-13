//
//  ColorValueTextView.swift
//  ColorizedAppSwiftUI
//
//  Created by Pavel Karunnyj on 13.06.2023.
//

import SwiftUI

struct ColorValueTextView: View {
    let colorValue: Double
    
    var body: some View {
        Text("\(lround(colorValue))")
            .foregroundColor(.white)
            .frame(width: 35)
    }
}

struct ColorValueTextView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.brown
            ColorValueTextView(colorValue: 13)
        }
    }
}
