//
//  InputTextView.swift
//  ParkiUDLAP
//
//  Created by Aldo Serrano Rugerio on 23/04/24.
//


import SwiftUI

struct InputTextView: View
{
    @Binding var text: String
    let title: String
    let placeholder: String
    var isSecureField: Bool = false
    
    var body: some View
    {
        VStack (alignment: .center)
        {
            if (isSecureField)
            {
                SecureField(placeholder, text: $text)
                    .font(.system(size: 14))
                    .padding(.leading, 20)
                    .multilineTextAlignment(.leading)
                    .frame(width: 332, height: 79)
                    .background(Color.white)
                    .clipShape(
                        RoundedRectangle(cornerRadius: 20))
            }
            else
            {
                TextField(placeholder, text: $text)
                    .font(.system(size: 14))
                    .padding(.leading, 20)
                    .multilineTextAlignment(.leading)
                    .frame(width: 332, height: 79)
                    .background(Color.white)
                    .clipShape(
                        RoundedRectangle(cornerRadius: 20))
                    
                    
            }
        }
    }
}

#Preview
{
    InputTextView(text: .constant(""), title: "ID", placeholder: "   ID")
}

