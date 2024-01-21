//
//  IngredientAndProcedureButtons.swift
//  Lets-Cook
//
//  Created by Shashank Pandey on 06/01/24.
//

import SwiftUI

struct IngredientAndProcedureButtons:View {
    @Binding var isIngredientShowing:Bool
    @Binding var isProcedureShowing:Bool
    var body: some View {
        HStack{
            Button{
                isIngredientShowing = true
                isProcedureShowing = false
            }label:{
                if isIngredientShowing{
                    SelectedButton(buttonText: "Ingredients")
                }else{
                    UnSelectedButton(buttonText: "Ingredients")
                }
                
            }
            
            Button{
                isProcedureShowing = true
                isIngredientShowing = false
            }label:{
                if isProcedureShowing{
                    SelectedButton(buttonText: "Procedure")
                    
                }else{
                    UnSelectedButton(buttonText: "Procedure")
                }
                
                
            }
            
        }
        .padding(.leading, 16)
        .padding(.trailing, 16)
    }
}
