//
//  SettingsLabelView.swift
//  Fruits Wiki
//
//  Created by Loi Pham on 4/5/21.
//

import SwiftUI

struct SettingsLabelView: View {
    // MARK: - PROPERTIES
    var labelText: String
    var labelImage: String
    
    // MARK: - BODY
    
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

// MARK: - PREVIEW

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fruits Wiki", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
