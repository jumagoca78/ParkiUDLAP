//
//  SignUpView .swift
//  ParkiUDLAP
//
//  Created by Aldo Serrano Rugerio on 23/04/24.
//

import SwiftUI

struct SignUpView: View
{
    var body: some View
    {
        ZStack
        {
            LogInBackgroundView(offsetY: 100)
            VStack
            {
                Text("Registarse")
                    .font(.title)
                    .bold()
                    .foregroundStyle(.white)
                    .padding(.top, 40)
                    .padding(.bottom, 40)
        
                Text("Sign Up")
                    .font(.title)
                
                InputTextView(text: .constant(""), title: "ID", placeholder: "ID")
                    .padding(.bottom, 5)
                
                InputTextView(text: .constant(""), title: "Name", placeholder: "Nombre")
                    .padding(.bottom, 5)
                
                InputTextView(text: .constant(""), title: "LastName", placeholder: "Apellidos")
                    .padding(.bottom, 5)
                
                InputTextView(text: .constant(""), title: "Password", placeholder: "Constraseña", isSecureField: true)
                    .padding(.bottom, 5)
                
                Button
                {
                    
                }
                label:
                {
                    HStack
                    {
                        Text("Continuar")
                            .fontWeight(.semibold)
                        Image(systemName: "arrow.forward.circle")
                    }
                }
                .foregroundStyle(.white)
                .frame(width: (UIScreen.current?.bounds.width)! - 50, height: 50)
                .background(AppColors.UDLAPOrange)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(radius: 5)
                .padding()
                
                
                Spacer()
            }
        }
    }
}

#Preview {
    SignUpView()
}
