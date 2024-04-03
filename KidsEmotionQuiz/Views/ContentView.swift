//
//  ContentView.swift
//  KidsEmotionQuiz
//
//  Created by Brianca Knight on 3/22/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
//                Image("feelings")
//                    .resizable()
//                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Text("BIG feelings?")
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                    Text("Let's learn about your MOOD")
                        .font(.headline)
                    NavigationLink(destination: PageView(choiceMade: .constant(0))) {
                        Text("Let's Go!")
                    }
                    .buttonStyle(.borderedProminent)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
