//
//  NavigationButtonLink.swift
//  Lets-Cook
//
//  Created by Shashank Pandey on 31/12/23.
//

import SwiftUI

struct NavigationButtonLink: View {
    var body: some View {
        HStack{
            Text("Start Cooking")
            Image(systemName: "arrow.right")
                .padding(.leading, 3)
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
    }
}

#Preview {
    NavigationButtonLink()
}
