//
//  TriviaView.swift
//  TriviaGame
//
//  Created by Stephanie Diep on 2021-12-17.
//

import SwiftUI

struct TriviaView: View {
    @EnvironmentObject var triviaManager: TriviaManager

    var body: some View {
        if triviaManager.reachedEnd {
            VStack(spacing: 20) {
                Text("Trivia Game")
                    .fontWeight(.heavy)
                    .foregroundColor(Color("AccentColor2"))

                Text("Congratulations, you completed the game! ").foregroundColor(Color("AccentColor2"))
                
                Text("You scored \(triviaManager.score) out of \(triviaManager.length)").foregroundColor(Color("AccentColor2"))
                
                Button {
                    Task.init {
                        await triviaManager.loadTriviaFromLocalFile()//fetchTrivia()
                    }
                } label: {
                    PrimaryButton(text: "Play again")
                }
            }
            .foregroundColor(Color.black).foregroundColor(Color("AccentColor2")).padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
        } else {
            QuestionView()
                .environmentObject(triviaManager)
        }
    }
}

struct TriviaView_Previews: PreviewProvider {
    static var previews: some View {
        TriviaView()
            .environmentObject(TriviaManager())
    }
}
