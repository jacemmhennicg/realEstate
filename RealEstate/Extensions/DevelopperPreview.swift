//
//  DevelopperPreview.swift
//  RealEstate
//
//  Created by Coding GOAT on 16/2/2024.
//

import Foundation

class DevelopperPreview {
    static let shared = DevelopperPreview()
    var listings: [Listing] = [
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Med Khouja",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 567,
            latitude: 25.7850,
            longitude: -80.1936,
            imageURLs: ["listing_3", "listing_5", "listing_1", "listing_4"],
            address: "124 Main St",
            city: "Miami",
            state: "Florida",
            title: "Miami Villa",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Hou Soued",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 2,
            numberOfBeds: 4,
            pricePerNight: 567,
            latitude: 25.7640,
            longitude: -80.1336,
            imageURLs: ["listing_8", "listing_6", "listing_4", "listing_3", "listing_2", "listing_1"],
            address: "124 Main St",
            city: "Miami",
            state: "Florida",
            title: "Beatiful Miami apartment in downtown Brickell",
            rating: 4.26,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony],
            type: .apartment
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Jess Mhn",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 865,
            latitude: 34.7850,
            longitude: -118.1936,
            imageURLs: ["listing_2", "listing_1", "listing_3"],
            address: "124 Main St",
            city: "Los Angeles",
            state: "California",
            title: "Beatiful Los Angeles home in Malibu",
            rating: 4.96,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .pool],
            type: .apartment
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Jw Chr",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 756,
            latitude: 25.7850,
            longitude: -120.1036,
            imageURLs: ["listing_1", "listing_6", "listing_2", "listing_4"],
            address: "124 Main St",
            city: "Los Angelos",
            state: "California",
            title: "beatiful House",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .laundry, .tv],
            type: .house
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Timothy Chalamet",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 867,
            latitude: 37.7850,
            longitude: -130.1006, 
            imageURLs: ["listing_5", "listing_8", "listing_4", "listing_3"],
            address: "124 Main St",
            city: "Los Angelos",
            state: "California",
            title: "Beatiful Los Angeles home in the Hollywoodd Hills",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .house
        )
   
    ]
}
