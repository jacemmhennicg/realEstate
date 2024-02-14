//
//  ListingImageCarouselView.swift
//  RealEstate
//
//  Created by Coding GOAT on 9/2/2024.
//

import SwiftUI

struct ListingImageCarouselView: View {
    var images = [
        "listing_1",
        "listing_2",
        "listing_3",
        "listing_4",
        "listing_5"]
    var body: some View {
        TabView {
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
                
            }
            
        }
       
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView()
}
