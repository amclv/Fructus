//
//  OnboardingView.swift
//  Fructus
//
//  Created by Aaron Cleveland on 5/12/21.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - Properties -
    var fruits: [Fruit] = fruitsData
    
    // MARK: - Body -
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            } //: LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}


// MARK: - Preview -
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
