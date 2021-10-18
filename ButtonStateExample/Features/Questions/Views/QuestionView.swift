//
//  QuestionView.swift
//  ButtonStateExample
//
//  Created by Russell Gordon on 2021-10-18.
//

import SwiftUI

struct QuestionView: View {
    
    var item: Question
    
    // Return a shuffled list of possible responses
    var responses: [String] {
        var validResponses: [String] = []
        validResponses.append(item.correctResponse)
        validResponses.append(contentsOf: item.incorrectResponses)
        return validResponses.shuffled()
    }
    
    var body: some View {
        VStack(alignment: .center) {
            
            Text(item.prompt)
                .bold()
                .multilineTextAlignment(.center)
            
            // Show list of possible responses
            ForEach(responses, id: \.self) { response in
                ButtonView(text: response,
                           correctResponse: item.correctResponse)
            }
            

        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(item: Question.dummyData)
    }
}
