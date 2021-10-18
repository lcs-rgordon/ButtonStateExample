//
//  ButtonView.swift
//  ButtonStateExample
//
//  Created by Russell Gordon on 2021-10-18.
//

import SwiftUI

struct ButtonView: View {
    
    let text: String
    let correctResponse: String
    
    @State private var backgroundColor: Color = .white
    
    var body: some View {
        
        Button(action: {
            // Change background based on response
            if text == correctResponse {
                backgroundColor = .green
            } else {
                backgroundColor = .red
            }
        }, label: {
            Text(text)
        })
        .padding()
        .background(backgroundColor)
        
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(text: "1989",
                   correctResponse: "1990")
    }
}
