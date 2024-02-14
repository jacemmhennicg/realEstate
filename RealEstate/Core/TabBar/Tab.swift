//
//  Tab.swift
//  RealEstate
//
//  Created by Coding GOAT on 12/2/2024.
//

import Foundation

enum Tab: String, CaseIterable {
    case explore = "Explore"
    case wishlists = "Wishlists"
    case profile = "profile"
   
    
    var systemImage: String {
        switch self {
            case.explore:
                return "magnifyingglass"
            case.wishlists:
                return "heart"
            case.profile:
                return "person"
            
        }
    }
    var index: Int {
        return Tab.allCases.firstIndex(of: self) ?? 0
    }
}
