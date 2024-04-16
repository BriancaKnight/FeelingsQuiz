//
//  QuizResultView.swift
//  KidsEmotionQuiz
//
//  Created by Brianca Knight on 4/3/24.
//

import SwiftUI

struct QuizResultView: View {
    var result: String
    
    var body: some View {
        Text(result)
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            .font(.headline)
    }
}

#Preview {
    QuizResultView(result: <#String#>)
}
