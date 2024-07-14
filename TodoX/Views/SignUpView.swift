//
//  SignUpView.swift
//  TodoX
//
//  Created by Shimol Khan on 14/07/2024.
//

import SwiftUI

struct SignUpView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            HeaderView(title: "Sign Up", 
                       subTitle: "Start organizing Todos",
                       angle: -15,
                       background: .orange)
            Form {
                TextField("Full Name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .autocorrectionDisabled()
                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Sign Up", background: .pink, action: {
                    // Attempt Sign Up
                })
            }
            Spacer()
        }
    }
}

#Preview {
    SignUpView()
}
