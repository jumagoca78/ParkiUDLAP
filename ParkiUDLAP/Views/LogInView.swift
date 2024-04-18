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
                    .frame(width: 100, height: 100)
                Text("Hola tonotos!")
                    .font(.title)
            }
        }
    }
}

#Preview 
{
    LogInView()
}
