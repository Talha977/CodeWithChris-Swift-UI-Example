//
//  VStackAlignment.swift
//  Test Swift UI
//
//  Created by Mnet on 05/03/2022.
//

import SwiftUI

struct VStackAlignment: View {
    var body: some View {
        
        VStack(spacing:5){
            Text("VStack")
            Text("Alignment").foregroundColor(.gray)
            Text("VStacks by default are centered")
                .foregroundColor(.white)
                .frame(maxWidth:.infinity)
                .padding().layoutPriority(1)
                .background(Color.blue)
            
            VStack(alignment:.leading, spacing:40){
                
                Text("Leading alignment").foregroundColor(.white)
                    .padding().layoutPriority(1)
                Divider()
                Image(systemName: "arrow.left")
                    .foregroundColor(.white)
                    .padding()
                
            }
            .background(RoundedRectangle(cornerRadius: 10).foregroundColor(Color.blue))
            .padding()
            
            VStack(alignment:.trailing, spacing:40){
                
                Text("Trailing alignment").foregroundColor(.white)
                    .padding().layoutPriority(1)
                Divider()
                Image(systemName: "arrow.right")
                    .foregroundColor(.white)
                    .padding()
                
            }
            .padding()
            .background(RoundedRectangle(cornerRadius: 10).foregroundColor(Color.blue))
            .padding()
            
        }
        
        
    }
}

struct VStackAlignment_Previews: PreviewProvider {
    static var previews: some View {
        VStackAlignment()
    }
}
