//
//  CardView.swift
//  Swift Ui Example
//
//  Created by Mac on 02/03/2022.
//

import SwiftUI

struct CardView: View {
    @State var playerCard = "card5"
    @State var cpuCard = "card9"
    @State var playerScore = 0
    @State var CPUScore = 0
    
    let fontHeight:CGFloat = 30.0
    var body: some View {
        
        
        ZStack {
            

            
            VStack(spacing: 70.0) {
                Image("logo")
                HStack {
                    Image(String(playerCard))
                    Image(String(cpuCard))
                }
                
                Button(action: {
                    print("Deal button presed")
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    if playerRand > cpuRand {
                        playerScore+=1
                    }
                    else if cpuRand > playerRand {
                        CPUScore+=1
                    }
                    
                }, label: {
                    Image("dealbutton")
                })
                
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .font(.system(size: fontHeight))
                        
                        Text(String(playerScore))
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .font(.system(size: fontHeight))
                        
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .font(.system(size: fontHeight))
                        
                        Text(String(CPUScore))
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .font(.system(size: fontHeight))
                    }
                    Spacer()
                    
                }
            }
            
            
        }.background(Image("background")
//                                    .resizable()
//                                    .aspectRatio(contentMode:.fit)
//                               )
//        .padding()
        
        
        
        
        
        
       )
        //            .resizable().aspectRatio(contentMode: .fill)
    }
}
//
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .previewDevice("iPhone SE (2nd generation)")
    }
}
