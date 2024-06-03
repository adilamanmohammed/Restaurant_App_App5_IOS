//
//  GalleryView.swift
//  Restaurant App
//
//  Created by Adil Aman Mohammed on 6/1/24.
//

import SwiftUI

struct GalleryView: View {
    
    @State var photoData = [String]()
    @State var sheetVisible = false
    @State var selectedPhoto = ""
    var DataServices = DataService()
    
    var body: some View {
        
        VStack(alignment: .leading){
            
            Text("Gallery").font(.largeTitle)
                .bold()
            
            GeometryReader{ proxy in
                
                ScrollView(showsIndicators : false){
                    
                    LazyVGrid(columns: [GridItem(spacing: 10),
                                        GridItem(spacing: 10),
                                        GridItem(spacing: 10)
                                       ]){
                        
                        ForEach(photoData, id: \.self){ p in
                            
                            Image(p).resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(maxWidth: (proxy.size.width-20)/3)
                                .clipped()
                                .onTapGesture {
                                    selectedPhoto = p
                                    sheetVisible = true
                                }
                                .cornerRadius(10.0)
                            
                            
                        }
                        
                        
                    }
                }
            }
            
            
        }
        .padding(.horizontal)
        .onAppear(){
            photoData = DataServices.getPhotos()
        }
        .sheet(isPresented: $sheetVisible){
            PhotoView(selectedPhoto: $selectedPhoto,
                      sheetVisible: $sheetVisible)
        }
        
        
        
    }
    
}

#Preview {
    GalleryView()
}
