//
//  InsideView.swift
//  LoginPage
//
//  Created by Sarath P on 08/10/21.
//


import SwiftUI
struct InsideView: View {
    @Environment(\.presentationMode) var presentationMode
 
    @State private var showingPopover = false
    @State private var isActive = false
    var body: some View {
        
        Form {
            Section{
                Text("Swift IOS Development")
                Text("MERN Stack")
                Text("Python Django")
                Text("Cyber Security")
                Text("Flutter")
                Text("MEAN Stack")
                Text("Android Kotlin")
                Text("Block Chain")
                Text("React Native")
                Text("Google GO")
            }
            Section {
                Text("Swift IOS Development")
                Text("MERN Stack")
                Text("Python Django")
                Text("Cyber Security")
                Text("Flutter")
                Text("MEAN Stack")
                Text("Android Kotlin")
                Text("Block Chain")
                Text("React Native")
                Text("Google GO")
            }
        }
        Button("Just a popper") {
            showingPopover = true
        }
        .popover(isPresented: $showingPopover) {
            
            VStack{
                Spacer()
                Image("rdj").clipShape(Circle())
                Spacer().frame(width: 10.0, height: 10.0, alignment: .leading).shadow(radius: 10)
                
                Spacer()
                Text("Alexa").frame(alignment: .leading).padding()
                ScrollView {
                    
                    HStack{
                        Text("There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc. This is sample text from Lorem Ipsum. There are many variation of passages of Loremm Ipsum availalble")
                    }.padding()
                    
                }
            }
        }.navigationBarTitle("Trending Courses")
        
        Button(action: {
            loginState = false
            UserDefaults.standard.set(loginState, forKey: "userLog")
            isActive = true
//            self.presentationMode.wrappedValue.dismiss()
           }) {
            Text("SignOut")
        }.padding()
        
        NavigationLink(destination: HomePageView(), isActive: $isActive) {}
            
            .navigationBarBackButtonHidden(true)
            .navigationBarTitleDisplayMode(.large)
            
        
    }
    
}

