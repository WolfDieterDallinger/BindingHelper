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
     import BindingHelper
     import SwiftUI

     struct MyView: View {
         @State private var isOn = false

         var body: some View {
             Toggle("Is on", $isOn)
             Toggle("Is off", !$isOn)
         }
     }
     ```
     */
    public static prefix func !(binding: Binding<Value>) -> Binding<Value> where Value == Bool {
        // Note: Here Binding<Bool> instead of Binding<Value> in the line above confuses Swift compiler in applications.
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
