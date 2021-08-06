//
//  ContentView.swift
//  Tip Calculator
//
//  Created by Arsh Ahluwalia on 2021-08-01.
//

import SwiftUI

struct ContentView: View {
    @State var total = ""
    @State var tipPercent: Double = 0.0
    var body: some View {
        VStack {
            Text("Tip Calculator")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            HStack {
                Text("$")
                TextField("Total", text: $total)
                    .border(Color.white, width: 0.25)
            }
                .padding()
            
            HStack {
                Slider(value: $tipPercent, in: 0...50, step: 1.0)
                Text("\(Int(tipPercent))%")
            }
                .padding()
            
            if let totalNum = Double(total) {
                Text("Tip Amount: $\(totalNum * tipPercent/100, specifier: "%0.2f")")
            } else {
                Text("Please enter a valid numerical number.")
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
