//
//  ContentView.swift
//  SwiftUISliderMasterity
//
//  Created by test on 03.01.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var age: Double = 18
    @State private var selectedColor: Color = Color.indigo
    
    var body: some View {
        VStack {
            List {
                Text("Selected Age - \(age, specifier: "%.0f")")
                Slider(value: $age, in: 1...120) {
                    Text("Select Age")
                } minimumValueLabel: {
                    Text("Min")
                } maximumValueLabel: {
                    Text("Max")
                }
            }
            
            List {
                ColorPicker("Select any color", selection: $selectedColor)
            }
        }
    }
}

#Preview {
    ContentView()
}
