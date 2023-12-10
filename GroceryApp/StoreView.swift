//
//  StoreView.swift
//  GroceryApp
//
//  Created by user on 12/10/23.
//

import SwiftUI

struct StoreView: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        GeometryReader { geometry in
            let bottomSafeArea = geometry.safeAreaInsets.bottom

            VStack {
                HeaderView(title: "Find Products", imageName: "carrot")

                ScrollView(showsIndicators: false) {
                    LazyVGrid(columns: columns, spacing: 15) {
                        ForEach(GroceryStore.groceryList) { item in
                            ProductCardView(groceryItem: .constant(item))
                                .padding(.bottom, 15)
                        }
                    }
                }
            }
            .padding(.bottom, 90 - bottomSafeArea)
            .padding(.horizontal, 24)
        }
    }
}

struct HeaderView: View {
    let title: String
    let imageName: String

    var body: some View {
        HStack {
            Spacer()
            Text(title)
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(Color(.label))
            Image(imageName)
            Spacer()
        }
    }
}


struct StoreView_Previews: PreviewProvider {
    static var previews: some View {
        StoreView()
    }
}


