//
//  Binding+??.swift
//  BindingHelper
//
//  Created by Wolf Dieter Dallinger on 15.07.22.
//

import SwiftUI

extension Binding {
    /**
     A `Binding` with a nil-coalesced wrapped value.

     The nil-coalescing is bidirectional. If you assign the default value to the wrapped value of this `Binding<Value>` the wrapped value of the original `Binding<Value?>` becomes nil.

     Use this operator e. g. with a `Binding<String?>` from a `NSManagedObject`‘s `Managed` property to get a `Binding<String>`.

     ```swift
     import BindingHelper
     import CoreData
     import SwiftUI

     struct MyView: View {
         // Item is a NSManagedObject with a
         // Managed property text of type String?
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
