//
//  ContentView.swift
//  Fruits Wiki
//
//  Created by Loi Pham on 4/5/21.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @State private var isShowingSettings: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) {item in
                    NavigationLink(
                        destination: FruitDetailView(fruit: item)) {
                            FruitRowView(fruit: item)
                                .padding(.vertical, 4)
                        }
                }
            } //: LIST
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                    isShowingSettings = true
                }) {
                    Image(systemName: "slider.horizontal.3")
                } //: BUTTON
            .sheet(isPresented: $isShowingSettings) {
                SettingsView()
            } //: SHEET
            ) //: NAVIGATION-BAR-ITEMS
        } //: NAVIGATION-VIEW
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
