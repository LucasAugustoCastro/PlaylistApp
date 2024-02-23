//
//  ContentView.swift
//  ListaMusicas
//
//  Created by Lucas Castro on 22/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        GeometryReader{screen in
            ScrollView {
                
                GeometryReader { innerGeometry in
                    Image("flowers")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 250, alignment: .center)
                        .offset(y: -min(innerGeometry.frame(in: .global).minY, 0))
                        .clipped()
                    
                }
                .frame(width: 200, height: 250, alignment: .center)
                

                VStack(alignment: .center) {
                    
                    HStack(alignment: .center) {
                        Button(action:{}){
                            Image(systemName: "arrow.down.circle.fill")
                        }
                        .foregroundColor(.black)
//                        Image(systemName: "arrow.down.circle.fill")
                        Button(action:{}){
                            Image(systemName: "person.fill.badge.plus")
                        }.foregroundColor(.black)
                        
                            
                        Spacer()
                        Button(action:{}){
                            Image(systemName: "play.circle.fill")
                        }
                        .font(.system(size:30))
                        .foregroundColor(.orange)
                    }
                    .padding(.top)
                    
                    VStack(alignment: .leading){
                        Text("Playlist Maneira")
                            .bold()
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("Essa playlist é destinada aos melhores Jr. Learners o Planeta ADDA")
                    }
                    .padding(.top)
                    
                    
                    HStack{
                        Image(systemName: "person.circle")
                        Text("Playlist de Yosda")
                        Spacer()
                    }
                    .padding(.top)
                    ForEach(0..<10) { _ in
                        HStack{
                            Image("musicImage")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 75, height: 75)
                            VStack(alignment: .leading){
                                Text("Dog Days Are Over")
                                    .bold()
                                    .font(.title2)
                                    .frame(maxWidth: .infinity, alignment: .topLeading)
                                Text("Florence + The Machine")
                            }
                            Button(action:{}){
                                Image(systemName: "ellipsis")
                                
                            }.foregroundColor(.black)
                        }
                        .padding(.top)
                    }
                    
                    
                    
                } // VSTACK
                .padding(20)
            } // SCROLLVIEW
            .padding(.top, 1)
            .padding(.bottom, 1)
        } // GEOMETRYREADER
    } // BODY
} // CONTENTVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
