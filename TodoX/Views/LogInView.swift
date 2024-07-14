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
                HeaderView(title: "TodoX",
                           subTitle: "Get Things Done",
                           angle: 15,
                           background: .pink)
                // Login Form
                Form {
                    TextField("Email Address", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(title: "Log In", background: .pink, action: {
                        // Attempt Log in
                    })
                }
                .offset(y: -50)
                
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
