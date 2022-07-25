//
//  Binding+!.swift
//  BindingHelper
//
//  Created by Wolf Dieter Dallinger on 15.07.22.
//

import SwiftUI

extension Binding {
    /**
     A `Binding` with the negated wrapped `Bool`.
     
     ```swift
     struct MyView: View {
         @State private var isOn = false
        
         var body: some View {
             Toggle("isOn", $isOn)
             Toggle("isOff", !$isOn)
         }
     }
     ```
     */
    public static prefix func !(binding: Binding<Value>) -> Binding<Value> where Value == Bool {
        return Binding<Bool>(
            get: {
                !binding.wrappedValue
            },
            set: { newValue in
                binding.wrappedValue = !newValue
            }
        )
    }
}
