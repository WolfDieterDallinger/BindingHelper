//
//  ContentView.swift
//  BindingHelperTestApp
//
//  Created by Wolf Dieter Dallinger on 26.07.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("!") {
                    NotOperatorView()
                }
                NavigationLink("??") {
                    NilCoalescingOperatorView()
                }
            }
            .navigationTitle("BindingHelperTestApp")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
