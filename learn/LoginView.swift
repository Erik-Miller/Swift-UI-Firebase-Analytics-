//
//  LoginView.swift
//  learn
//
//  Created by Erik Miller on 10/24/19.
//  Copyright © 2019 Erik Miller. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    
    @State private var name = ""
    @State private var isPresented = false
    
    
    var body: some View {
        
        VStack{
            Form{
                Text("Hello")
                Text("First Name")
                TextField("Enter your name", text: $name)
                    .keyboardType(.decimalPad)
                Text("First Name")
                TextField("Enter your name", text: $name)
            }
        }
    }
    
}

struct ThisView: View {
    
    
    
    var body: some View {
        
        List{
            HStack(){
                VStack{
                    Text("Image")
                        .frame(width: 50, height: 50, alignment: .leading)
                }
                
                VStack{
                    Text("Title")
                        .padding(5)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    
                    Text("Description")
                        .padding(5)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                }
                
            }
            .padding(10)
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            .background(Color.black)
            .foregroundColor(.white)
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
