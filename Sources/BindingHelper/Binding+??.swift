//
//  Binding+??.swift
//  BindingHelper
//
//  Created by Wolf Dieter Dallinger on 15.07.22.
//

import SwiftUI

extension Binding {
    /**
     A `Binding` with the nil-coalesced wrapped value.
    
     The nil-coalescing is bidirectional. If you assign the default value to the wrapped value the wrapped value of the original `Binding` becomes nil.
     
     Use this operator e. g. for a `Binding` from an managed object property with an optional type like `String?` from `CoreData`.
    
     ```swift
     struct MyView: View {
         // Item is a managed object from CoreData with an property named text of type String?
         @ObservedObject var item: Item
        
         var body: some View {
             TextField("Enter text", $item.text ?? "")
         }
     }
     ```
     */
    public static func ??(binding: Binding<Value?>, `default`: Value) -> Binding<Value> where Value: Equatable {
        return Binding<Value>(
            get: {
                binding.wrappedValue ?? `default`
            },
            set: { newValue in
                binding.wrappedValue = newValue == `default` ? nil : newValue
            }
        )
    }
}
