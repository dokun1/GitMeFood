//
//  ContentView.swift
//  GitMeFood
//
//  Created by David Okun on 4/6/23.
//

import SwiftUI

struct ContentView: View {
    var foodItems: [String] = [
        "Chicken Pesto Pizza",
        "Sushi",
        "BBQ Sandwich",
        "Chicken and Rice",
        "Whipped Brie",
        "Caesar Salad w/o Anchovies"
    ]
    
    var drinkItems: [String] = [
        "Oreo Milkshake",
        "Orange Juice",
        "Coke",
        "Dr. Pepper",
        "Waterloo Sparkling Water"
    ]
    
    var body: some View {
        NavigationStack {
            List {
                Section("Food") {
                    ForEach(foodItems, id: \.self) { food in
                        Label(food, systemImage: "fork.knife.circle")
                    }.onMove { indexSet, newIndex in
                        print("moved item in \(indexSet) to \(newIndex)")
                    }.onDelete { indexSet in
                        print("deleted item in \(indexSet)")
                    }
                }
                Section("Drinks") {
                    ForEach(drinkItems, id: \.self) { drink in
                        Label(drink, systemImage: "mug")
                    }.onMove { indexSet, newIndex in
                        print("moved item in \(indexSet) to \(newIndex)")
                    }.onDelete { indexSet in
                        print("deleted item in \(indexSet)")
                    }
                }
            }.toolbar {
                EditButton()
            }.navigationTitle("Tasty Menu Items")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
