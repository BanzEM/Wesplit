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
    
    
    var body: some View {
       NavigationStack {
            Form {
                Section{
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ??  "ZAR" ))
                        .keyboardType(.decimalPad)
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
