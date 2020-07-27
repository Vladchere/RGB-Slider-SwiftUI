//
//  ViewRGB.swift
//  RGB Slider SwiftUI
//
//  Created by Vladislav on 26.07.2020.
//  Copyright © 2020 Vladislav Cheremisov. All rights reserved.
//

import SwiftUI

struct ViewRGB: View {
    
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        Color(red: red/255, green: green/255, blue: blue/255)
            .frame(height: 150)
            .cornerRadius(10)
            .overlay(RoundedRectangle(cornerRadius: 10)
                .stroke(Color.white, lineWidth: 2))
    }
}

struct ViewRGB_Previews: PreviewProvider {
    static var previews: some View {
        ViewRGB(red: 100, green: 100, blue: 100)
    }
}
