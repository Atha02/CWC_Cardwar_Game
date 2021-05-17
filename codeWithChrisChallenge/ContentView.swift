//
//  ContentView.swift
//  codeWithChrisChallenge
//
//  Created by Athanasios Chatzikonstantinou on 07.03.21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"         //private damit diese Variable nur hier innerhalb dieser Struct genutzt werden
    @State private var cpuCard = "card8"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            Image("background")
                .ignoresSafeArea()
            
                VStack {
                    Spacer()
                    Image("logo")
                    Spacer()
                    HStack {
                        Spacer()
                        Image(playerCard)
                        Spacer()
                        Image(cpuCard)
                        Spacer()
                    }
                    Spacer()
                    //When button tapped it should update the card as well as the score below
                    Button(action: {
                        
                        //Generate a random number between 2 and 14
                        let playerRand = Int.random(in: 2...14)     //Zufallsgenerator für Int Zahlen zwischen 2...14
                        let cpuRand = Int.random(in: 2...14)
                        
                        
                        
                        
                        //Update the card
                        playerCard = "card\(playerRand)"
                        cpuCard = "card\(cpuRand)"
                        //Update the score
                        
                        if playerRand > cpuRand {            //erhöhen Wert immer um eins von der Ausgangsvariable aus
                            playerScore += 1                 //Die Ausgangsvariable steht oben
                        } else {
                            cpuScore += 1
                        }
                        
                    }, label: {
                        Image("dealbutton")
                    })
            
                    Spacer()
                    
                    HStack{
                        
                        Spacer()
                        VStack {
                            Text("Player").font(.headline).padding(.bottom, 10)
                            Text(String(playerScore)).font(.largeTitle)
                        }.foregroundColor(.white)
                        Spacer()
                        
                        
                        Spacer()
                        VStack {
                            Text("CPU").font(.headline).padding(.bottom, 10)
                            Text(String(cpuScore)).font(.largeTitle)
                        }.foregroundColor(.white)
                        Spacer()
                    
                    }
                    
                    Spacer()
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
