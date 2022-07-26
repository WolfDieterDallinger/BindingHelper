# ``BindingHelper``

A Swift package with a Swift modul to extend functionality of `Binding`.

## Overview

This modul enables:

- The prefix operator ! for `Binding`.
- The operator ?? for `Binding`.

> Note: As of July 2022 DocC does not handle extensions to external symbols so `!` and `??` are not properly included in this documentation, but you can access the documentation using quick help (right click on symbol > show quick help).

### Operator !

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

### Operator ??

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
