//
//  AboutView.swift
//  LoginPage
//
//  Created by Sarath P on 08/10/21.
//

import SwiftUI

var loginState = UserDefaults.standard.bool(forKey: "userLog")

struct LoginPage: View {
  
    @State private var showingAlert = false
    @State var username = ""
    @State var password = ""
    @State var realUsername = "alexa"
    @State var realPassword = "alexa123"
    @State private var isActive = false
    @State var showErrorMessage = false
    var body: some View {
      
        VStack{
            Spacer()
            
            Spacer()
            Text("Enter Login Details :").padding().frame(maxWidth: .infinity, alignment: .leading)
            Spacer()
            
            Form{
                
                TextField("Username", text: $username).autocapitalization(.none)
                SecureField("Password", text: $password).autocapitalization(.none)
                if showErrorMessage {
                    Text("Incorrect Username or Password").foregroundColor(Color.red).font(.system(size: 12))
                }
            }
            
            Button(action: {
                if username.isEmpty && password.isEmpty {
                    showingAlert = true
                }else if username != realUsername {
                    showErrorMessage = true
                }else if password != realPassword {
                    showErrorMessage = true
                }else if (username == realUsername) && (password == realPassword) {
                    username = ""
                    password = ""
                    isActive = true
                    loginState = true
                    showErrorMessage = false
                    UserDefaults.standard.set(loginState, forKey: "userLog")
                    
                }
                
            }) {
                Text("Login")
            }.alert(isPresented: $showingAlert) {
                Alert(title: Text("Notice"), message: Text("Please enter your login details"), dismissButton: .default(Text("OK")))
            }
            
            
            .padding().frame(maxWidth: .infinity, alignment: .center)
            NavigationLink(destination: InsideView(), isActive: $isActive) {}
            Spacer()
                .navigationTitle("Login Page")
                .navigationBarTitleDisplayMode(.inline)
                
        }
    }
}

