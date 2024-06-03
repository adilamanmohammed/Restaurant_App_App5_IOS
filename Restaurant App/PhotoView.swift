//
//  PhotoView.swift
//  Restaurant App
//
//  Created by Adil Aman Mohammed on 6/3/24.
//

import SwiftUI

struct PhotoView: View {
    
    @Binding var selectedPhoto : String
    @Binding var sheetVisible : Bool
    var body: some View {
        
        ZStack{
            Image(selectedPhoto).resizable()
                .aspectRatio(contentMode: .fit)
            
            
            VStack{
                
                HStack{
                    Spacer()
                    
                    Button(action: {
                        sheetVisible = false
                    }, label: {
                        
                        Image(systemName: "x.circle").foregroundColor(.gray)
                            .scaleEffect(2)
                        
                        
                    }).padding()
                }
                Spacer()
            }
        }
    }
}

#Preview {
    PhotoView(selectedPhoto: Binding.constant("gallery2"),
              sheetVisible: Binding.constant(true))
}
