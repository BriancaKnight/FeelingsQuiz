//
//  PageView.swift
//  KidsEmotionQuiz
//
//  Created by Brianca Knight on 3/22/24.
//

import SwiftUI

struct PageView: View {
    @Binding var choiceMade: Int
    @State private var tally: 
    
    var body: some View {
        
        let currentPage: Question = questions[choiceMade]
        NavigationStack{
            VStack {
                Text(currentPage.questionText)
                    .padding()
                    .background(.pink)
                
                if currentPage.endofQuiz{
                    //display end
                    NavigationLink(destination: ContentView()){
                        Text("Start Over")
                    }
                    
                } else {
                    NavigationLink(destination: PageView(choiceMade:
                            .constant(currentPage.choice1Destination))) {
                                Text(currentPage.choice1)
                            }
                            .padding()
                            .background(.green)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .font(.headline)
                    
                    NavigationLink(destination: PageView(choiceMade:
                            .constant(currentPage.choice2Destination))) {
                                Text(currentPage.choice2)
                            }
                            .padding()
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .font(.headline)
                    
                    NavigationLink(destination: PageView(choiceMade:
                            .constant(currentPage.choice3Destination))) {
                                Text(currentPage.choice3)
                            }
                            .padding()
                            .background(.purple)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .font(.headline)
                }
            }
        }
    }
}

#Preview {
    PageView(choiceMade: .constant(0))
}

