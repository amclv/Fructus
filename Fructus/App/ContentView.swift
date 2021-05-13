//
//  ContentView.swift
//  Fructus
//
//  Created by Aaron Cleveland on 5/11/21.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties -
    var fruits: [Fruit] = fruitsData
    
    // MARK: - Body -
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits) { item in
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                }
            }
        } //: NAVIGATION
    }
}

// MARK: - Preview -
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
