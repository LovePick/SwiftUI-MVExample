//
//  StoreModel.swift
//  MVExampleApp
//
//  Created by Supapon Pucknavin on 16/10/2565 BE.
//

import Foundation

@MainActor
class StoreModel: ObservableObject {
    let webservice: Webservice
    @Published var products: [Product] = []
    
    init(webservice: Webservice) {
        self.webservice = webservice
    }
    
    func populateProducts() async throws{
        products = try await webservice.getProducts()
        
    }
}
