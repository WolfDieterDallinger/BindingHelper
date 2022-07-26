//
//  NotOperatorView.swift
//  BindingHelperTestApp
//
//  Created by Wolf Dieter Dallinger on 26.07.22.
//

import BindingHelper
import SwiftUI

struct NotOperatorView: View {
    @State private var isOn = false
    
    var body: some View {
        ScrollView {
            VStack {
                Text("isOn == \(isOn ? "true" : "false")")
                    .animation(nil)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .clipped()
                Toggle("Is on", isOn: $isOn.animation())
                Toggle("Is off", isOn: !$isOn.animation())
            }
            .padding()
        }
        .navigationTitle("!")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct NotOperatorView_Previews: PreviewProvider {
    static var previews: some View {
        NotOperatorView()
    }
}
