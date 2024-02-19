//
//  ListingImageCarouselView.swift
//  RealEstate
//
//  Created by Coding GOAT on 9/2/2024.
//

import SwiftUI

struct ListingImageCarouselView: View {
    let listing: Listing
    var body: some View {
        TabView {
            ForEach(listing.imageURLs, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
                
            }
            
        }
       
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView(listing: DevelopperPreview.shared.listings[0])
}
