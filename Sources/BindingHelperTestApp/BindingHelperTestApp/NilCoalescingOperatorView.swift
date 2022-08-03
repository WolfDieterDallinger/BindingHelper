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
    
    var textToShow: String {
        guard let text = text else {
            return "text = nil"
        }
        return "text = \"\(text)\""
    }
    
    var body: some View {
        ScrollView {
            VStack {
                Text(textToShow)
                    .animation(nil)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .clipped()
                TextField("Enter text", text: $text.animation() ?? "")
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
