//
//  ExploreService.swift
//  RealEstate
//
//  Created by Coding GOAT on 16/2/2024.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DevelopperPreview.shared.listings
    }
}
