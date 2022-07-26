# BindingHelper

A Swift package with a Swift modul to add functionality tp `Binding`.

## Overview

This modul enables:

- The prefix operator ! for `Binding`.
- The operator ?? for `Binding`.

> Note: As of July 2022 DocC does not handle extensions to external symbols so `!` and `??` are not properly included in this documentation, but you can access the documentation using quick help (right click on symbol > show quick help).

### Operator !

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

### Operator ??

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

## Topics

### Operators

- ``Binding+!``
- ``Binding+??``
