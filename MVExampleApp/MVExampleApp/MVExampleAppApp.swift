//
//  MVExampleAppApp.swift
//  MVExampleApp
//
//  Created by Supapon Pucknavin on 16/10/2565 BE.
//

import SwiftUI

@main
struct MVExampleAppApp: App {
    
    // MARK: - PROPERTY
    @StateObject private var storeModel = StoreModel(webservice: Webservice())
    
    // MARK: - BODY
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(storeModel)
        }
    }
}
