//
//  LoginPage.swift
//  landmarks
//
//  Created by IACD Training 13 on 2024/05/03.
//

import SwiftUI

struct LoginPage: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showLoginScreen = false
    
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color.blue
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                Circle()
                    .scale(1.35)
                    .foregroundColor(.white)
                
                VStack{
                    Text("Login")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    TextField("username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                    
                    SecureField("password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                    
                    Button("Login"){
                        autheticateUser(username: username, password: password)
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                    
                   NavigationLink(destination: home()
                    .navigationBarBackButtonHidden(true)
                                  /*Text("You are logged in @\(username)")*/, isActive: $showLoginScreen){
                        EmptyView()
                    }
                    
                    
                    
                /*    NavigationLink("home"){
                        home()
                            .navigationBarBackButtonHidden(true)
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)*/
                        
                    
                    
                    
                }
            }
            .navigationBarHidden(true)
        }
        
    }
    func autheticateUser(username: String, password: String){
      /*  if username.lowercased() == "admin" && password.lowercased() == "admin"{
            wrongUsername = 0
           // if password.lowercased() == "nkanyiso@123"{
                wrongPassword = 0*/
                showLoginScreen = true
           /* }else{
                wrongPassword = 2
          //  }
      //  } else{
            wrongUsername = 2
        }*/
    }
}

#Preview {
    LoginPage()
}
