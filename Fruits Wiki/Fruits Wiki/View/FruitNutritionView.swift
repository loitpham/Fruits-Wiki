//
//  FruitNutritionView.swift
//  Fruits Wiki
//
//  Created by Loi Pham on 4/5/21.
//

import SwiftUI

struct FruitNutritionView: View {
    // MARK: PROPERTIES
    var fruit: Fruit
    let nutritionLabels: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    // MARK: BODY
    var body: some View {
        GroupBox() {
            
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutritionLabels.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutritionLabels[item])
                        } //: GROUP
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    } //: HSTACK
                } //: FOREACH
            } //: DISCLOSURE-GROUP
        } //: BOX
    }
}

// MARK: - PREVIEW
struct FruitNutritionView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutritionView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
