//
//  MainTabContainerView.swift
//  GroceryApp
//
//  Created by user on 12/10/23.
//

import SwiftUI

struct MainTabContainerView: View {
    @State private var tabSelected: Tab = .storefront
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack {
            TabView(selection: $tabSelected) {
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    self.destinationView(for: tab)
                        .tag(tab)
                }
            }
            CustomTabBar(selectedTab: $tabSelected)
                .ignoresSafeArea(edges: .bottom)
        }
    }
    
    private func destinationView(for tab: Tab) -> some View {
        switch tab {
        case .storefront:
            return AnyView(StoreView())
        case .cart:
            return AnyView(CartView())
        case .setup:
            return AnyView(SetUpView())
        }
    }
}

struct MainTabContainerView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabContainerView()
    }
}

