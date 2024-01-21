//
//  OnboardView.swift
//  Lets-Cook
//
//  Created by Shashank Pandey on 31/12/23.
//

import SwiftUI
import SwiftData

struct OnboardView:View {
    @Binding var showHome:Bool
    @State var name:String = (UserDefaults.standard.string(forKey: "UserName") ?? "")
    var body: some View {
        NavigationStack{
            ZStack{
                Image(.homescreen)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                VStack{
                    Spacer()
                    Image(.logo)
                        .resizable()
                        .frame(width: 79, height: 79)
                    Text("2.3M+ Premium Recipe")
                        .foregroundStyle(.white)
                        .font(.title)
                        .bold()
                        .padding(.top)
                    
                    Spacer()
                    
                    Text("Get\nCooking")
                        .foregroundStyle(.white)
                        .font(.system(size: 50))
                        .padding(.top)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                    
                    Text("Simple way to find Tasty Recipe")
                        .foregroundStyle(.white)
                        .font(.system(size: 16))
                        .padding(.top, 1)
                    if name.isEmpty{
                        NavigationLink {
                            SignupView(goHome: $showHome)
                        } label: {
                            NavigationButtonLink()
                        }
                        .buttonStyle(.bordered)
                        .tint(.basecolor)
                        .padding(.top, 40)

                    }else{
                        ActionButton(isOnHome: $showHome)
                            .padding(.top, 40)
                    }
                    
                    Spacer()
                }
            }.ignoresSafeArea(.all)
                .background(.black)
        }
        
    }
}

#Preview {
    OnboardView(showHome: .constant(false))
}
