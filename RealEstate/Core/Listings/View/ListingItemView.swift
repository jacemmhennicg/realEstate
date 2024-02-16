//
//  ListingItemView.swift
//  RealEstate
//
//  Created by Coding GOAT on 6/2/2024.
//

import SwiftUI

struct ListingItemView: View {
    
    var images = [
        "listing_1",
        "listing_2",
        "listing_3",
        "listing_4",
        "listing_5"]
    var body: some View {
        VStack(spacing: 8){
           ListingImageCarouselView()
            .frame(height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            
            
            
            HStack(alignment: .top) {
                VStack(alignment: .leading){
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    HStack(spacing: 4){
                        Text("$567")
                            .fontWeight(.semibold)
                        Text("night")

                    }
                    .foregroundStyle(.black)

                }
                Spacer()
                HStack(spacing: 2){
                    Image(systemName: "star.fill")
                    Text("4.86")
                }
                .foregroundStyle(.black)

            }
            .font(.footnote)
        }
        
        
    }
}

#Preview {
    ListingItemView()
}
