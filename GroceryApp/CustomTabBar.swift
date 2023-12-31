//
//  CustomTabBar.swift
//  GroceryApp
//
//  Created by user on 12/10/23.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case storefront
    case cart
    case setup = "slider.horizontal.3"
    
    var tabName: String {
        switch self {
        case .storefront:
            return "Store"
        case .cart:
            return "Cart"
        case .setup:
            return "Setup"
        }
    }
}

struct CustomTabBar: View {
    @Binding var selectedTab: Tab
    
    private var fillImage: String {
        selectedTab.rawValue
    }
    
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    Spacer()
                    TabBarItem(tab: tab, selectedTab: $selectedTab)
                    Spacer()
                }
            }
            .frame(height: 90)
            .background(Color.white)
            .clipShape(
                RoundedRectangle(cornerRadius: 18, style: .continuous)
            )
            .shadow(color: Color(red: 0.9, green: 0.92, blue: 0.95).opacity(0.5), radius: 18.5, x: 0, y: -12)
        }
    }
}

struct TabBarItem: View {
    let tab: Tab
    @Binding var selectedTab: Tab
    
    var body: some View {
        VStack(spacing: 3) {
            Image(systemName: selectedTab == tab ? tab.rawValue : tab.rawValue)
                .foregroundColor(tab == selectedTab ? Color(red: 0.33, green: 0.69, blue: 0.46) : Color(red: 0.01, green: 0.01, blue: 0.01))
                .font(.system(size: 24))
                .onTapGesture {
                    selectedTab = tab
                }
            
            Text(tab.tabName)
                .font(.system(size: 12, weight: .semibold))
                .multilineTextAlignment(.center)
                .foregroundColor(tab == selectedTab ? Color(red: 0.33, green: 0.69, blue: 0.46) : Color(red: 0.01, green: 0.01, blue: 0.01))
        }
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar(selectedTab: .constant(.storefront))
    }
}
