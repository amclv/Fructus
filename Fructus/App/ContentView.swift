//
//  ContentView.swift
//  Fructus
//
//  Created by Aaron Cleveland on 5/11/21.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties -
    
    @State private var isShowingSettings: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: - Body -
    var body: some View {
        NavigationView {
            List {
                // .shuffled() shuffles the list view randomly.
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    } //: NavigationLink
                } //: ForEach
            } //: List
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                isShowingSettings = true
            }, label: {
                Image(systemName: "slider.horizontal.3")
            })) //: BUTTON
            .sheet(isPresented: $isShowingSettings, content: {
                SettingsView()
            })
        } //: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

// MARK: - Preview -
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(fruits: fruitsData)
        }
    }
}
