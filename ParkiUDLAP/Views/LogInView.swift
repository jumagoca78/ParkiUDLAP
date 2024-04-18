//
//  LogInView.swift
//  ParkiUDLAP
//
//  Created by Aldo Serrano Rugerio on 18/04/24.
//

import SwiftUI

struct LogInView: View 
{
    var body: some View
    {
        ZStack
        {
            LinearGradient(colors: [Color.blue, Color.purple], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack
            {
                Image(systemName: "heart.fill")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.red)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Text("Hola tonotos!")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

#Preview 
{
    LogInView()
}
