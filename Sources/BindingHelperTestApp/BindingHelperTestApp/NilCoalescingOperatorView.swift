//
//  NilCoalescingOperatorView.swift
//  BindingHelperTestApp
//
//  Created by Wolf Dieter Dallinger on 26.07.22.
//

import BindingHelper
import SwiftUI

struct NilCoalescingOperatorView: View {
    @State private var text: String?
    
    var body: some View {
        ScrollView {
            VStack {
                if let text = text {
                    Text("text == \"\(text)\"")
                } else {
                    Text("text == nil")
                }
                TextField("Enter text", text: $text ?? "")
            }
            .padding()
        }
        .navigationTitle("??")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct NilCoalescingOperatorView_Previews: PreviewProvider {
    static var previews: some View {
        NilCoalescingOperatorView()
    }
}
