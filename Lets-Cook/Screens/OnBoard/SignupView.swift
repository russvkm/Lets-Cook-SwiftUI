//
//  SignupView.swift
//  Lets-Cook
//
//  Created by Shashank Pandey on 31/12/23.
//

import SwiftUI
import SwiftData

struct SignupView: View {
    @State var userName:String = ""
    @Environment(\.modelContext) var modelContext
    @Binding var goHome:Bool
    var body: some View {
        ZStack{
            Image(.homescreen)
                .resizable()
                .scaledToFill()
            VStack{
                Spacer()
                HStack{
                    TextField("", text: $userName, prompt:
                                Text("Enter your name here")
                                    .foregroundStyle(.white))
                        .padding()
                }
                .font(.title)
                .foregroundStyle(.white)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.white, lineWidth: 4)
                }
                .padding()
                Spacer()
                ActionButton(isOnHome: $goHome, name:userName)
                Spacer(minLength: 50)
                
            }
        }
        .background(.black)
        .ignoresSafeArea()
    }
}

#Preview {
    SignupView(goHome: .constant(true))
}

@Model
class UserDetail{
    var userName:String
    init(userName:String){
        self.userName = userName
    }
}
