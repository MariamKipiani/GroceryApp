//
//  AdjustButton.swift
//  GroceryApp
//
//  Created by user on 12/10/23.
//

import SwiftUI

struct AdjustButton: View {
    let minusAction: () -> Void
    let plusAction: () -> Void
    var quantityPlaceholder: Int

    var body: some View {
        HStack(spacing: 10) {
            Button(action: minusAction) {
                Image(systemName: "minus")
                    .frame(width: 44, height: 44)
                    .font(.system(size: 18))
                    .foregroundColor(Color(red: 0.33, green: 0.69, blue: 0.46))
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(red: 0.89, green: 0.89, blue: 0.89))
                    )
            }

            Text("\(quantityPlaceholder)")
                .font(.system(size: 18, weight: .semibold))
                .foregroundColor(Color(.label))

            Button(action: plusAction) {
                Image(systemName: "plus")
                    .frame(width: 44, height: 44)
                    .font(.system(size: 18))
                    .foregroundColor(Color(red: 0.33, green: 0.69, blue: 0.46))
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(red: 0.89, green: 0.89, blue: 0.89))
                    )
            }
        }
    }
}

struct AdjustButton_Previews: PreviewProvider {
    static var previews: some View {
        AdjustButton(minusAction: {}, plusAction: {}, quantityPlaceholder: 0)
            .previewDisplayName("Adjust Button Preview")
    }
}
