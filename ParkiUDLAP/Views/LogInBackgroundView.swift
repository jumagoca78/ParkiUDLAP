//
//  LogInBackgroundView.swift
//  ParkiUDLAP
//
//  Created by Aldo Serrano Rugerio on 23/04/24.
//

import SwiftUI

struct LogInBackgroundView: View 
{
    var offsetY: CGFloat
    var body: some View
    {
        ZStack
        {
            Color(AppColors.UDLAPOrange)
                .ignoresSafeArea()
            
            RoundedRectangle(cornerRadius: 50)
                .fill(AppColors.customWhite)
                .frame(width: 440, height: 800)
                .offset(x: 22, y: offsetY)
        }
    }
}

#Preview 
{
    LogInBackgroundView(offsetY: 140)
}
