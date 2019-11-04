//
//  ContentView.swift
//  learn
//
//  Created by Erik Miller on 10/24/19.
//  Copyright © 2019 Erik Miller. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    
    // Initial state
    @State private var show_modal: Bool = false
    
    
    
    
    var body: some View {
        NavigationView {
            VStack{
                Text("Label")
                Button(action: {
                    print("Button Pushed")
                    self.show_modal = true
                }) {
                    Text("Show Modal")
                }.sheet(isPresented: self.$show_modal) {
                    ModalView()
                        .background(Color.green)
                }
                
            }
            .navigationBarTitle("Welcome")
        }
    }
}

struct ModalView: View {
    
    @State private var favoriteColor = 0
       var colors = ["Red", "Green", "Blue"]

    
    var body: some View {
        
        HStack {
            
            Spacer()
            VStack {
                Picker(selection: $favoriteColor, label: Text("What is your favorite color?")) {
                    ForEach(0..<colors.count) { index in
                        Text(self.colors[index]).tag(index)
                    }
                }.pickerStyle(SegmentedPickerStyle())

                Spacer()
                Text("This is a modal")
                Spacer()
            }
            Spacer()
        }
        .background(Color.gray)
        .foregroundColor(.white)
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
