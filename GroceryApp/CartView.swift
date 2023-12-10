//
//  CartView.swift
//  GroceryApp
//
//  Created by user on 12/10/23.
//

import SwiftUI

struct CartView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Your Cart Content Goes Here")
                .font(.title)
                .foregroundColor(.secondary)
                .padding()
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .previewDisplayName("Cart Preview")
    }
}

