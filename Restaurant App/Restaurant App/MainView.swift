//
//  ContentView.swift
//  Restaurant App
//
//  Created by Adil Aman Mohammed on 6/1/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        //Adding Tab bar
        TabView{
            
            MenuView().tabItem {
                VStack{
                    Image(systemName: "menucard")
                    Text("Menu")
                }
            }
            
            AboutView().tabItem {
                VStack{
                    Image(systemName: "info.circle")
                    Text("About")
                }
            }
            
            GalleryView().tabItem {
                VStack{
                    Image(systemName: "photo")
                    Text("Gallery")
                }
            }
        }
        
        
    }
}

#Preview {
    MainView()
}
