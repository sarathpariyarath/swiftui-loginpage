//
//  ContentView.swift
//  LoginPage
//
//  Created by Sarath P on 07/10/21.
//

import SwiftUI
struct HomePageView: View {
    @State private var isActive = false
    @State var aboutActive: Bool = false
    var body: some View {
        
            VStack{
                Spacer()
                Image("rdj").clipShape(Circle())
                Spacer().frame(width: 10.0, height: 10.0, alignment: .leading).shadow(radius: 10)
                
                Spacer()
                Text("Welcome baackk user :)").frame( alignment: .leading).padding()
                
                HStack{
                    
                    Text("We")
                    Text("Missed").foregroundColor(Color.red)
                    Text("You Badly ! 😚")
                }
                
                Spacer()
                
                HStack {
                    
                    Button(action: {
                        isActive = true
                    }) {
                        Text("Take Me In").padding()
                    }
                    NavigationLink(destination: LoginPage(), isActive: $isActive) {
                    }
                    Text("|")
                    Button(action: {
                        aboutActive = true
                    }) {
                        Text("About Us").padding()
                    }
                    NavigationLink(destination: AboutView(), isActive: $aboutActive) {
                    }
                }
                
            }.navigationTitle("Hey you!")
//                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
                
            Spacer()
        
        
    }
}



struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomePageView()
        }
    }
}

