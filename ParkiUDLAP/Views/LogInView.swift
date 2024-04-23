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
        NavigationStack
        {
            ZStack
            {
                LogInBackgroundView(offsetY: 140)
                VStack
                {
                    Image(systemName: "heart.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .foregroundStyle(Color.red)
                        .padding(.top, 20)
                        .padding(.bottom, 70)
            
                    Text("Log In")
                        .font(.title)
                    
                    InputTextView(text: .constant(""), title: "ID", placeholder: "ID")
                        .padding()
                    
                    InputTextView(text: .constant(""), title: "Password", placeholder: "Constraseña", isSecureField: true)
                        .padding()
                    
                    Button
                    {
                        
                    }
                    label:
                    {
                        HStack
                        {
                            Text("Iniciar sesión")
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
                    
                    // Boton de crear nueva cuenta
                    NavigationLink
                    {
                        SignUpView()
                            .navigationBarBackButtonHidden(true)
                    }
                    label:
                    {
                        HStack(spacing: 5)
                        {
                            Text("¿No tienes una cuenta?")
                            Text("Registrate ahora")
                                .fontWeight(.bold)
                        }
                        .font(.system(size: 15))
                    }
                    .foregroundStyle(AppColors.UDLAPOrange)
                }
            }
        }
    }
}

#Preview 
{
    LogInView()
}

extension UIWindow
{
    static var current: UIWindow?
    {
        for scene in UIApplication.shared.connectedScenes
        {
            guard let windowScene = scene as? UIWindowScene else { continue }
            for window in windowScene.windows
            {
                if window.isKeyWindow { return window }
            }
        }
        return nil
    }
}


extension UIScreen
{
    static var current: UIScreen?
    {
        UIWindow.current?.screen
    }
}
