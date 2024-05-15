//
//  home.swift
//  landmarks
//
//  Created by IACD Training 13 on 2024/04/22.
//

import SwiftUI

struct home: View {
    @Environment(ModelData.self) var modelData
    @State private var showingProfile = false
    var body: some View {
        
       ZStack{
          
          
           NavigationStack{
           
                   VStack{
                   
                       
                       Spacer()
                       Spacer()
                       Spacer()
                       Spacer()
                       
                       
                       
                       //     .navigationTitle("Home")
                         .toolbar {
                             Button {
                                 showingProfile.toggle()
                             } label: {
                                 Label("User Profile", systemImage: "person.crop.circle")
                             }
                           
                             .sheet(isPresented: $showingProfile) {
                                 ProfileHost()
                                     .environment(modelData)
                             }
                             
                             
                             }

                         //  .navigationBarTitleDisplayMode(.inline)
                          // .toolbarBackground(.blue)
                         //  .toolbarColorScheme(.dark)
                         //  .offset(y: -60)
                       
                           
                       
                       
                       
                       Text("Know My City")
                           .font(.custom("Georgia", size: 50))
                           .foregroundColor(.blue)
                       Spacer()
                       Spacer()
                       Spacer()
                       Text("Categories")
                           .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                       Spacer()
                       Spacer()
                       Spacer()
                       NavigationLink(destination: HotelView(), label:
                                        {Text("Hotels")
                               .font(.custom("Georgia", size: 50))
                               .fontWeight(.bold)
                               .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight:.infinity)
                               .background(.black)
                               .cornerRadius(10)
                               .padding()
                       })
                       
                       NavigationLink(destination: RestView(), label:
                                        {Text("Restaurants")
                               .font(.custom("Georgia", size: 50))
                               .fontWeight(.bold)
                               .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight:.infinity)
                               .background(.black)
                               .cornerRadius(10)
                               .padding()
                       })
                       NavigationLink(destination: ContentView(), label:
                                        {Text("Attractions")
                           
                               .font(.custom("Georgia", size: 50))
                               .fontWeight(.bold)
                               .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight:.infinity)
                               .background(.black)
                               .cornerRadius(10)
                               .padding()
                       })
                       Spacer()
                       Spacer()
                       Spacer()
                       Spacer()
                       Spacer()
                       Spacer()
                       Spacer()
                       Spacer()
                       Spacer()
                       Spacer()
                       
                  }
                   
               
              
            
           }
      // detail: {
     //         Text("Select a Landmark")
     //     }
               
        }
    
    }
}

#Preview {
    home()
        .environment(ModelData())
}
