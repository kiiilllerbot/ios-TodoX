//
//  TLButton.swift
//  TodoX
//
//  Created by Shimol Khan on 14/07/2024.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button{
            
        }label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(.white)
                    .bold()
            }
        }
    }
}

#Preview {
    TLButton(title: "Title", background: .pink){
        // Action
    }
}
