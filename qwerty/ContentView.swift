//
//  ContentView.swift
//  qwerty
//
//  Created by T Krobot on 24/6/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isContentVisible = true
    @State private var funnyIndex = 0
    
    var celebrities = [Celebrity(celebrity: "John Cena", picture:Image("bingchilling")),Celebrity(celebrity: "YOU!!!", picture: Image("Tarzan")),Celebrity(celebrity: "Rick Astley", picture: Image("GivenUp")),Celebrity(celebrity: "Kim Jong Un", picture: Image("f"))
    ]
    //add more ppl
    var body: some View {
        ZStack {
            if isContentVisible {
                VStack {
                    Text("You look like...")
                    Button {
                        isContentVisible = false
                    } label: {
                        Text("WHO?????")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                .padding()
            }
            
            if !isContentVisible {
                VStack {
                    Text(celebrities[funnyIndex].celebrity)
                    Text(celebrities[funnyIndex].picture)
                    Button {
                        isContentVisible = true
                       
                        funnyIndex = funnyIndex + 1
                        if funnyIndex == 4 {
                            funnyIndex = funnyIndex - 4
                        }
                        
                    } label: {
                        Text("☠️ (please bring me back)")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
