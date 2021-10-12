//
//  ViewNavigator.swift
//  LoginPage
//
//  Created by Sarath P on 11/10/21.
//

import SwiftUI

struct ViewNavigator: View {
    
    @State private var isActive = true
    var body: some View {
        NavigationView {
            if loginState == true {
                NavigationLink(destination: InsideView(), isActive: $isActive) {}
            }else{
                NavigationLink(destination: HomePageView(), isActive: $isActive) {}
            }
            
        }
    }
}
