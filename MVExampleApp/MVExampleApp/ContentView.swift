//
//  ContentView.swift
//  MVExampleApp
//
//  Created by Supapon Pucknavin on 16/10/2565 BE.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTY
    @EnvironmentObject private var storeModel: StoreModel
    
    
    // MARK: - FUNCTION
    private func populateProducts() async {
        do{
            try await storeModel.populateProducts()
        } catch {
            print(error)
        }
        
    }
    
    
    // MARK: - BODY
    var body: some View {
        List(storeModel.products){ product in
            Text(product.title)
            Text(product.price as NSNumber, formatter: NumberFormatter.currency)
            
            
            
        }//: LIST
        .task {
            // .task : A view that runs the specified action asynchronously before the view appears.
            
            // call webservice
            await populateProducts()
            
        }
        .padding()
    }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(StoreModel(webservice: Webservice()))
    }
}
