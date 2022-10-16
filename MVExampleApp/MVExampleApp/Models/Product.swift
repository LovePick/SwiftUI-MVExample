//
//  Product.swift
//  MVExampleApp
//
//  Created by Supapon Pucknavin on 16/10/2565 BE.
//

import Foundation

struct Product: Decodable, Identifiable {
    let id: Int
    let title: String
    let price: Double
    let description: String
    let category: String
    let image: String
    let rating: Rating
}
