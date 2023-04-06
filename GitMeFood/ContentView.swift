//
//  ContentView.swift
//  GitMeFood
//
//  Created by David Okun on 4/6/23.
//

import SwiftUI

struct ContentView: View {
    var menuItems: [String] = [
        "Chicken Pesto Pizza",
        "Sushi",
        "BBQ Sandwich",
        "Chicken and Rice",
        "Whipped Brie",
        "Caesar Salad w/o Anchovies"
    ]
    
    var body: some View {
        NavigationStack {
            List(menuItems, id: \.self) { menuItem in
                Label(menuItem, systemImage: "fork.knife.circle.fill")
            }.navigationTitle("Tasty Menu Items")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
