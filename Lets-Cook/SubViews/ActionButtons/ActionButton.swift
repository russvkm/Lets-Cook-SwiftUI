//
//  ActionButton.swift
//  Lets-Cook
//
//  Created by Shashank Pandey on 31/12/23.
//

import SwiftUI

struct ActionButton: View {
    @Binding var isOnHome:Bool
    var name:String?
    var body: some View {
        Button{
            withAnimation {
                if let name = name{
                    UserDefaults.standard.setValue(name, forKey: "UserName")
                }
                isOnHome = true
            }
            
        }label: {
            HStack{
                Text("Start Cooking")
                Image(systemName: "arrow.right")
                    .padding(.leading, 3)
            }
            .padding(.horizontal)
            .padding(.vertical, 8)
        }
        .buttonStyle(.bordered)
        .tint(.basecolor)
    }
}

#Preview {
    ActionButton(isOnHome: .constant(false))
}
