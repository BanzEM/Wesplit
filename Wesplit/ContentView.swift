//
//  ContentView.swift
//  Wesplit
//
//  Created by Bandisile Mazomba on 2026/02/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var checkAmount = 0.00
    @State private var tipPercentage = 10
    @State private var numberOfPeople = 2
    
    let tips = [5, 10, 15, 20, 25]
    
    
    var body: some View {
       NavigationStack {
            Form {
                Section{
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ??  "ZAR" ))
                        .keyboardType(.decimalPad)
                    
                    Picker("Number of people", selection: $numberOfPeople){
                        ForEach(2..<100){
                            Text("\($0) people")
                        }
                    }
                }
                
                Section{
                    Picker("Tip Percentage",selection: $tipPercentage){
                        ForEach(tips, id: \.self){
                            Text("\($0)")
                        }
                    }
                }
                
                Section{
                    Text(checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "ZAR"))
                }
           }
            .navigationTitle("WeSplit"  )
            .navigationBarTitleDisplayMode( .inline )
            
       }
        
    }
}

#Preview {
    ContentView()
}
