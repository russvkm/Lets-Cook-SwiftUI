//
//  HomeScreenView.swift
//  Lets-Cook
//
//  Created by Shashank Pandey on 31/12/23.
//

import SwiftUI

struct HomeScreenView: View {
    @State var searchedText:String = ""
    @StateObject var viewModel = HomeScreenViewModel()
    let names:[String] = ["Holly", "Josh", "Rhonda", "Ted"]
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(names, id:\.self){ name in
                        NavigationLink(value: name) {
                            Text(name)
                        }
                    }
                }
            }
            .navigationTitle(UserDefaults.standard.string(forKey: "UserName") ?? "Home")
            .navigationDestination(for: String.self) { name in
                Text(name)
            }
        }
        .searchable(text: $searchedText, placement: .navigationBarDrawer){
            
        }
        .onSubmit {
            print(searchedText)
        }
        
    }
    
    var searchresult:[String] {
        if searchedText.isEmpty{
            return names
        }else{
            return names.filter{$0.contains(searchedText)}
        }
    }
}

#Preview {
    HomeScreenView()
}

//struct SearchViewSwift:View {
//    @Binding var searchedText:String
//    var body: some View {
//        HStack{
//            Text("HELLO SEARCHABBE \(searchedText)")
//        }
//        .searchable(text: $searchedText)
//    }
//}
