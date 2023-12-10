//
//  GroceryModel.swift
//  GroceryApp
//
//  Created by user on 12/10/23.
//

import Foundation

struct GroceryStore {
    struct GroceryItem: Identifiable {
        let id = UUID()
        let name: String
        let amount: String
        let price: Double
        let quantity: Int
        let image: String
    }
    
    static let groceryList: [GroceryItem] = [
        GroceryItem(name: "Sparkling Water", amount: "500ml", price: 1.99, quantity: 1, image: "sparklingWater"),
        GroceryItem(name: "Mixed Nuts", amount: "250g", price: 4.99, quantity: 0, image: "mixedNuts"),
        GroceryItem(name: "Green Tea", amount: "100g", price: 15.99, quantity: 0, image: "greenTea"),
        GroceryItem(name: "Fresh Berries", amount: "500g", price: 4.99, quantity: 0, image: "berries"),
        GroceryItem(name: "Salmon Fillet", amount: "300g", price: 12.99, quantity: 0, image: "salmon"),
        GroceryItem(name: "Yogurt", amount: "500g", price: 3.99, quantity: 0, image: "yogurt"),
        GroceryItem(name: "Avocado", amount: "3pcs", price: 4.99, quantity: 0, image: "avocado"),
        GroceryItem(name: "Cherry Tomatoes", amount: "250g", price: 2.99, quantity: 0, image: "tomatoes"),
        GroceryItem(name: "Olive Oil", amount: "500ml", price: 6.99, quantity: 0, image: "oliveOil"),
        GroceryItem(name: "Fresh Orange Juice", amount: "1L", price: 8.99, quantity: 0, image: "orangeJuice"),
    ]
}
