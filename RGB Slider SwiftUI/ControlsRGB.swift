//
//  ControlsRGB.swift
//  RGB Slider SwiftUI
//
//  Created by Vladislav on 27.07.2020.
//  Copyright © 2020 Vladislav Cheremisov. All rights reserved.
//

import SwiftUI

struct ControlsRGB: View {
    
    @Binding var value: Double
    let colorSlider: Color
    
    var body: some View {
        HStack {
            Text("\(lround(value))")
                .frame(width: 50)
                .font(.system(size: 20))
                .foregroundColor(Color.white)
            
            Slider(value: $value, in: 0...255, step: 1)
                .accentColor(colorSlider)
            
            TextField("", value: $value, formatter: NumberFormatter()){
                self.correctionText()
            }
                .frame(width: 65)
                .font(.system(size: 20))
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .multilineTextAlignment(.center)
                .keyboardType(.default)
        }
    }
    
    private func correctionText() {
        switch value {
        case ...0:
            value = 0
        case 255...:
            value = 255
        default:
            break
        }
    }
}

struct ControlsRGB_Previews: PreviewProvider {
    static var previews: some View {
        ControlsRGB(value: .constant(125.0), colorSlider: .red)
    }
}
