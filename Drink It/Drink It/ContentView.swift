//
//  ContentView.swift
//  Drink It
//
//  Created by Lucas  Alcantara  on 21/12/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isSearchClicked = false
    @State private var isBellClicked = false
    @State private var isProfileClicked = false
    let images = ["Img1", "Img2", "Img3", "Img4", "Img5", "Img6"]
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                Color("BackgroundColor")
                    .ignoresSafeArea()
                
                
                HStack {
                    Button {
                        isSearchClicked.toggle()
                    } label: {
                        Image(systemName: "magnifyingglass")
                            .foregroundStyle(isSearchClicked ? .green : .white)
                            .font(.system(size: 25))
                    }
                    
                    Button {
                        isBellClicked.toggle()
                    } label: {
                        Image(systemName: "bell")
                            .foregroundStyle(isBellClicked ? .green : .white)
                            .font(.system(size: 25))
                    }
                    
                    Button {
                        isProfileClicked.toggle()
                    } label: {
                        Image(systemName: "person.circle")
                            .foregroundStyle(isProfileClicked ? .green : .white)
                            .font(.system(size: 25))
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                .padding()
                .zIndex(1)
                
                VStack(alignment: .leading) {
                    Text("Drinks For You")
                        .font(.system(size: 23))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding([.top], 45)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHGrid(rows: [GridItem(.flexible(), spacing: 10)], spacing: 10) {
                            ForEach(images, id: \.self) { imageName in
                                Image(imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 350, height: 350)
                                    .cornerRadius(20)
                            }
                        }
                    }
                    Spacer()
                }
                .padding()
                .zIndex(2)
                
                VStack {
                    VStack(alignment: .leading) {
                        Text("Teste tab")
                            .frame(width: 200, height: 50)
                            .background(.white)
                            .cornerRadius(15)
                        
                    }
                    .padding()
                }
                .zIndex(3)
            }
        }
    }
}

#Preview {
    ContentView()
}
