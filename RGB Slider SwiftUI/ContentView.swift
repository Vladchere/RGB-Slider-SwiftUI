//
//  ContentView.swift
//  RGB Slider SwiftUI
//
//  Created by Vladislav on 26.07.2020.
//  Copyright © 2020 Vladislav Cheremisov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redValue = 0.0
    @State private var greenValue = 0.0
    @State private var blueValue = 0.0
    
    var body: some View {
        ZStack {
            Color(.systemTeal)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                ViewRGB(red: redValue, green: greenValue, blue: blueValue)
                
                ControlsRGB(value: $redValue, colorSlider: .red)
                ControlsRGB(value: $greenValue, colorSlider: .green)
                ControlsRGB(value: $blueValue, colorSlider: .blue)
                
                Spacer()
            }
            .padding()
        }
        .onTapGesture {
            self.hideKeyboard()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
