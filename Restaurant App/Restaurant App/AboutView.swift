//
//  AboutView.swift
//  Restaurant App
//
//  Created by Adil Aman Mohammed on 6/1/24.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        
        ScrollView(showsIndicators: false){
            VStack(alignment: .leading){
                Text("About").font(.largeTitle).bold()
                
                Image("restaurant-inside").resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom)
                
                Text("Student union in the world,the Oklahoma State University Student Union is a student activity center for meetings, conferences, meals, recreation, and shopping for students and alumni on the campus of Oklahoma State University in Stillwater, Oklahoma.")
                
                
                Image("map").resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom)
                
                Text("""
    Studen Union
    Oklahoma State University
    Stillwater, Oklahoma - 74074
    """)
                
            }.padding(.horizontal)
        }
        
        
    }
}

#Preview {
    AboutView()
}
