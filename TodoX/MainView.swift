//
//  MainView.swift
//  TodoX
//
//  Created by Shimol Khan on 14/07/2024.
//

import FirebaseCore
import SwiftUI

struct MainView: View {
    init(){
        FirebaseApp.configure()
    }
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    MainView()
}
