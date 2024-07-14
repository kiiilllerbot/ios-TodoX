//
//  LogInView.swift
//  TodoX
//
//  Created by Shimol Khan on 14/07/2024.
//

import SwiftUI

struct LogInView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView()
                // Login Form
                Form {
                    TextField("Email Address", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Button{
                        
                    }label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.pink)
                            
                            Text("Log In")
                                .foregroundColor(.white)
                                .bold()
                        }
                    }
                }
                
                // Sign Up
                VStack {
                    Text("New around here?")
                    NavigationLink("Create An Account", destination: SignUpView())
                }
            }
            .padding(.bottom, 50)
            
            Spacer()
        }
    }
}

#Preview {
    LogInView()
}
