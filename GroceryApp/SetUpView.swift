//
//  SetUpView.swift
//  GroceryApp
//
//  Created by user on 12/10/23.
//

import SwiftUI

struct SetUpView: View {
    var body: some View {
        VStack {
            Text("Welcome to the Setup")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.primary)
                .padding()

            Text("Configure your preferences and settings here.")
                .font(.body)
                .foregroundColor(.secondary)
                .padding()

            Spacer()
        }
    }
}

struct SetUpView_Previews: PreviewProvider {
    static var previews: some View {
        SetUpView()
            .previewDisplayName("Setup View Preview")
    }
}
