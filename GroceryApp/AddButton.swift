//
//  AddButton.swift
//  GroceryApp
//
//  Created by user on 12/10/23.
//

import SwiftUI

struct AddButton: View {
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(systemName: "plus")
                .frame(width: 44, height: 44)
                .background(Color.green)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 15))
        }
    }
}

struct AddButton_Previews: PreviewProvider {
    static var previews: some View {
        AddButton {
            print("Hey")
        }
        .previewDisplayName("Add Button Preview")
    }
}
