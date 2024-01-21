//
//  TabViewScreen.swift
//  Lets-Cook
//
//  Created by Shashank Pandey on 31/12/23.
//

import SwiftUI


struct TabViewScreen:View{
    var body: some View{
        TabView{
            HomeScreenView()
                .tabItem {
                    Text("Home")
                    Image(systemName: "house")
                }
            Profile()
                .tabItem {
                    Text("Profile")
                    Image(systemName: "person.fill")
                }
        }
    }
}

#Preview {
    TabViewScreen()
}
