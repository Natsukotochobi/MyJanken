//
//  ContentView.swift
//  MyJanken
//
//  Created by natsuko mizuno on 2024/02/23.
//

import SwiftUI

struct ContentView: View {
    
    //じゃんけんの結果を格納する変数(0=初期画面、1=グー、2=チョキ、3=パー)
    @State var answerNumber = 0
    
    var body: some View {
        VStack {
            Spacer()
            if answerNumber == 0 {
                Text("これからじゃんけんをします！")
                    .padding(.bottom)
            } else if answerNumber == 1 {
                Image("gu")
                    .resizable()
                    .scaledToFit()
                Spacer()
                Text("グー")
                    .padding(.bottom)
            } else if answerNumber == 2 {
                Image("choki")
                    .resizable()
                    .scaledToFit()
                Spacer()
                Text("チョキ")
                    .padding(.bottom)
            } else {
                Image("pa")
                    .resizable()
                    .scaledToFit()
                Spacer()
                Text("パー")
                    .padding(.bottom)
            }
            
            
            Button(action: {
                var newAnswerNumber = 0
                
                repeat {
                    newAnswerNumber = Int.random(in: 1...3)
                } while answerNumber == newAnswerNumber
                
                answerNumber = newAnswerNumber
            }, label: {
                Text("じゃんけんをする！")
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .font(.title)
                    .background(Color.pink)
                    .foregroundColor(.white)
                
            })
        }
        
    }
}

#Preview {
    ContentView()
}
