//
//  FruitCardView.swift
//  Fructus
//
//  Created by Aaron Cleveland on 5/11/21.
//

import SwiftUI

struct FruitCardView: View {
    // MARK: - Properties -
    
    // MARK: - Body -
    var body: some View {
        VStack(spacing: 20) {
            // Fruit: Image
            Image("blueberry")
            // Fruit: Title
            Text("Blueberry")
            // Fruit: Headline
            // Button: Start
        } //: VSTACK
    }
}

// MARK: - Preview -

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView()
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
