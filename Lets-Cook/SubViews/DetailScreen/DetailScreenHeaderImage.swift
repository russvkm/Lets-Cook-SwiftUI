//
//  DetailScreenHeaderImage.swift
//  Lets-Cook
//
//  Created by Shashank Pandey on 06/01/24.
//

import SwiftUI
import Kingfisher

struct DetailScreenHeaderImage: View {
    @State var recipe:RecipeData
    var body: some View {
        ZStack(alignment: .bottom){
            KFImage(URL(string: recipe.recipe?.image ?? ""))
                .resizable()
                .clipShape(.rect(cornerRadius: 15.0))
                .frame(width: .none, height: 200)
                .padding(.all)
            
            HStack{
                Spacer()
                Text("Label")
                    .foregroundStyle(.white)
                BookMarksButton()
            }
            .padding(.bottom, 35)
            .padding(.trailing, 35)
        }
    }
}

#Preview {
    DetailScreenHeaderImage(recipe: RecipeData(recipe: Recipe(uri: "homescreen", label: "Dosa", image: "https://shorturl.at/lyHNR", images: AllImage(THUMBNAIL: ImageLinks(url: ""), SMALL: ImageLinks(url: ""), REGULAR: ImageLinks(url: "")), url: "", shareAs: "", ingredientLines: [""], ingredients: [IngredientsData(text: "50g split urad lentils , washed", image: "https://www.edamam.com/food-img/d5a/d5aa5bc5a3142f3179f31310054a56e6.jpg")], _links: SelfLink(self: NextLink(href: "", title: "")), source: "New source"), _link: SelfLink(self: NextLink(href: "", title: ""))))
}
