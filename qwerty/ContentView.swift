//
//  ContentView.swift
//  qwerty
//
//  Created by T Krobot on 24/6/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isContentVisible = true
    
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
                    Text("yj")
                    Button {
                        isContentVisible = true
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
