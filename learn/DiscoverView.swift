//
//  DiscoverView.swift
//  
//
//  Created by Erik Miller on 10/30/19.
//

import SwiftUI

struct DiscoverView: View {
    
    @State private var show_modal: Bool = false
    
    
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Spacer()
                        .frame(height: 10)
                    Button(action: {
                        print("Button Pushed")
                        self.show_modal = true
                    }) {
                        Text("Show Modal")
                            .frame(width: 370, height: 250, alignment: .center)
                            .background(Color.black)
                            .foregroundColor(.white)
                    }.sheet(isPresented: self.$show_modal) {
                        ArticleView()
                            .background(Color.green)
                    }
                }
                
                
                VStack {
                    HStack {
                        Text("Featured Users")
                        Spacer()
                        
                    }
                    Spacer()
                        .frame(minHeight: 20, maxHeight: 20)
                    HStack {
                        VStack{
                            Image(systemName: "person.fill")
                                .resizable().aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40, alignment: .center)
                                .clipShape(Circle())
                                .overlay(
                                    Circle().stroke(Color.black, lineWidth: 1))
                            
                            //.shadow(radius: 10)
                            Text("Username")
                                .font(.system(size: 12))
                            
                        }
                        Spacer()
                        VStack{
                            Image(systemName: "person.fill")
                                .resizable().aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40, alignment: .center)
                                .clipShape(Circle())
                                .overlay(
                                    Circle().stroke(Color.black, lineWidth: 1))
                            Text("Username")
                                .font(.system(size: 12))
                        }
                        Spacer()
                        VStack{
                            Image(systemName: "person.fill")
                                .resizable().aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40, alignment: .center)
                                .clipShape(Circle())
                                .overlay(
                                    Circle().stroke(Color.black, lineWidth: 1))
                            Text("Username")
                                .font(.system(size: 12))
                        }
                        Spacer()
                        VStack {
                            Image(systemName: "person.fill")
                                .resizable().aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40, alignment: .center)
                                .clipShape(Circle())
                                .overlay(
                                    Circle().stroke(Color.black, lineWidth: 1))
                            Text("Username")
                                .font(.system(size: 12))
                        }
                    }
                }
                    
                .padding(30)
                Spacer()
            }.navigationBarTitle("Discover")
        }
    }
}


struct ArticleView: View {
    
    var body: some View {
        VStack{
            
            Spacer()
                .frame(height: 20)
            
            HStack{
                Spacer()
                    .frame(width:20, height: 40)
                Image(systemName: "xmark")
                Spacer()
            }
            Spacer()
            //padding()
            VStack {
                Text("Content Area")
                    .frame(width: 370, height: 250, alignment: .center)
                    .background(Color.black)
                    .foregroundColor(.white)
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eleifend diam vel neque euismod sodales. Proin auctor ante augue, sed vestibulum risus viverra eu. Integer vel turpis lectus. Maecenas pulvinar sollicitudin blandit. Vestibulum tristique ornare ligula sed lacinia. Proin eget sapien vitae justo aliquet laoreet et vitae quam. Donec turpis nisi, eleifend et ante ut, consectetur euismod mauris. Nunc a purus est. Vivamus vitae tellus turpis. Praesent malesuada sapien ut odio vehicula scelerisque. Vestibulum a nibh lacinia, feugiat lorem id, feugiat ipsum. Donec vitae metus quis odio mollis interdum in posuere magna. Quisque consequat lectus ac porttitor viverra. Etiam et diam eu magna sagittis ultricies. Vestibulum tristique ligula at tempor venenatis. Pellentesque vulputate efficitur rutrum. Sed lacinia sagittis ipsum, malesuada accumsan nisi finibus ut. Duis congue, quam vel lacinia ultrices, libero nunc rhoncus enim, id gravida odio urna et massa. Etiam eleifend massa non diam consectetur, id imperdiet velit sollicitudin.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eleifend diam vel neque euismod sodales. Proin auctor ante augue, sed vestibulum risus viverra eu. Integer vel turpis lectus. Maecenas pulvinar sollicitudin blandit. Vestibulum tristique ornare ligula sed lacinia. Proin eget sapien vitae justo aliquet laoreet et vitae quam. Donec turpis nisi, eleifend et ante ut, consectetur euismod mauris. Nunc a purus est. Vivamus vitae tellus turpis. Praesent malesuada sapien ut odio vehicula scelerisque. Vestibulum a nibh lacinia, feugiat lorem id, feugiat ipsum. Donec vitae metus quis odio mollis interdum in posuere magna. Quisque consequat lectus ac porttitor viverra. Etiam et diam eu magna sagittis ultricies. Vestibulum tristique ligula at tempor venenatis. Pellentesque vulputate efficitur rutrum. Sed lacinia sagittis ipsum, malesuada accumsan nisi finibus ut. Duis congue, quam vel lacinia ultrices, libero nunc rhoncus enim, id gravida odio urna et massa. Etiam eleifend massa non diam consectetur, id imperdiet velit sollicitudin.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eleifend diam vel neque euismod sodales. Proin auctor ante augue, sed vestibulum risus viverra eu. Integer vel turpis lectus. Maecenas pulvinar sollicitudin blandit. Vestibulum tristique ornare ligula sed lacinia. Proin eget sapien vitae justo aliquet laoreet et vitae quam. Donec turpis nisi, eleifend et ante ut, consectetur euismod mauris. Nunc a purus est. Vivamus vitae tellus turpis. Praesent malesuada sapien ut odio vehicula scelerisque. Vestibulum a nibh lacinia, feugiat lorem id, feugiat ipsum. Donec vitae metus quis odio mollis interdum in posuere magna. Quisque consequat lectus ac porttitor viverra. Etiam et diam eu magna sagittis ultricies. Vestibulum tristique ligula at tempor venenatis. Pellentesque vulputate efficitur rutrum. Sed lacinia sagittis ipsum, malesuada accumsan nisi finibus ut. Duis congue, quam vel lacinia ultrices, libero nunc rhoncus enim, id gravida odio urna et massa. Etiam eleifend massa non diam consectetur, id imperdiet velit sollicitudin.")
                    .padding(.horizontal, 40)
                    .padding(.vertical, 40)
            }
            
            
        }
        .background(Color.gray)
        .foregroundColor(.white)
        .edgesIgnoringSafeArea(.all)
        
    }
}








struct DiscoverView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoverView()
    }
}
