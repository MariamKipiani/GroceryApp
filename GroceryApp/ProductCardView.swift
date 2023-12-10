//
//  ProductCardView.swift
//  GroceryApp
//
//  Created by user on 12/10/23.
//

import SwiftUI

struct ProductCardView: View {
    @Binding var groceryItem: GroceryStore.GroceryItem

    var body: some View {
        VStack {
            Image(groceryItem.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 115, maxHeight: 100)

            Spacer(minLength: 25)

            HStack {
                VStack(alignment: .leading, spacing: 12) {
                    Text(groceryItem.name)
                        .font(.system(size: 16, weight: .bold))
                        .kerning(0.1)
                        .foregroundColor(Color(.label))

                    Text("\(groceryItem.amount), Price")
                        .font(.system(size: 14))
                        .foregroundColor(Color(.secondaryLabel))
                }
                Spacer()
            }

            Spacer()

            HStack {
                if groceryItem.quantity < 1 {
                    Text("$\(String(format: "%.2f", groceryItem.price))")
                        .font(.system(size: 18, weight: .semibold))
                        .kerning(0.1)
                        .foregroundColor(Color(.label))

                    Spacer()
                }

                if groceryItem.quantity > 0 {
                    AdjustButton(minusAction: {
                        print("- quantity")
                    }, plusAction: {
                        print("+ quantity")
                    }, quantityPlaceholder: 1)
                } else {
                    AddButton(action: {
                        print("added")
                    })
                }
            }
            .frame(height: 45)
        }
        .frame(maxWidth: 175, maxHeight: 230)
        .padding(EdgeInsets(top: 20, leading: 15, bottom: 15, trailing: 15))
        .background(
            RoundedRectangle(cornerRadius: 18)
                .stroke(Color(.tertiaryLabel), lineWidth: 1)
        )
    }
}

struct ProductCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProductCardView(groceryItem: .constant(GroceryStore.groceryList[0]))
            .padding()
            .previewLayout(.sizeThatFits)
            .previewDisplayName("Product Card Preview")
    }
}

