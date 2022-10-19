//
//  ContentView.swift
//  Shopping List
//
//  Created by Tony Hong on 3/11/22.
//

import SwiftUI

struct ContentView: View {
    
    var list = [
        Items(imageName: "banana", itemName: "Bananas", quantity: 3),
        Items(imageName: "apple", itemName: "Apples", quantity: 4),
    ]
    
    var listVeggies = [
        Items(imageName: "broccoli", itemName: "Broccoli", quantity: 1),
        Items(imageName: "celery", itemName: "Celery", quantity: 2),
        Items(imageName: "lettuce", itemName: "Lettuce", quantity: 3)
    ]
    
    var listMPFDBEN = [
        Items(imageName: "nuts", itemName: "Nuts", quantity: 10),
        Items(imageName: "eggs", itemName: "Eggs", quantity: 12)
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Fruits")) {
                    ForEach(list) { i in
                        CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity) }.navigationTitle("Shopping List")
                }
                
                Section(header: Text("Vegetables")) {
                    ForEach(listVeggies) { i in
                        CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity) }.navigationTitle("Shopping List")
                }
                
                Section(header: Text("Meat, Poultry, Fish, Dry Beans, Eggs, & Nuts")) {
                    ForEach(listMPFDBEN) { i in
                        CustomCell(imageName: i.imageName, itemName: i.itemName, quantity: i.quantity) }.navigationTitle("Shopping List")
                }
            }
        }
    }
    
    class Items : Identifiable {
        let imageName: String
        let itemName: String
        let quantity: Int
        
        init(imageName: String, itemName: String, quantity: Int) {
            self.imageName = imageName
            self.itemName = itemName
            self.quantity = quantity
        }
    }
}
