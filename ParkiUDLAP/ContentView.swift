//
//  ContentView.swift
//  ParkiUDLAP
//
//  Created by Aldo Serrano Rugerio on 18/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack
        {
            LinearGradient(colors: [Color.orange,Color.white], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack
            {
                Image(systemName: "heart.fill")
                    .imageScale(.large)
                    .foregroundStyle(.red)
                Text("Hola tonotos!")
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
