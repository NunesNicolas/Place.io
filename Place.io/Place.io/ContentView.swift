//
//  ContentView.swift
//  Place.io
//
//  Created by Turma02-Backup on 05/09/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewmodel = ViewModel()
    var body: some View {
            VStack {
//                List(viewmodel.chars, id: \.self){ loc in
//                    Text("asdas")
//                }
                TabView{
                    
                        EnjoyView()
                        .tabItem {
                            Label("Enjoy", systemImage: "rectangle.portrait.and.arrow.forward.fill")
                          }
                    
                    ListView()
                    .tabItem {
                        Label("List", systemImage: "tray.and.arrow.down.fill") }
                    
                    InfoView()
                    .tabItem {
                        Label("Info", systemImage: "tray.and.arrow.down.fill") }
                    
                    CommentsView()
                    .tabItem {
                        Label("Comments", systemImage: "tray.and.arrow.down.fill")
                        }
                    
                  
                }
                .tint(.orange)
                .onAppear() {
                                 UITabBar.appearance().backgroundColor = UIColor(.white)
                        }

            }
            .onAppear() {
                viewmodel.fetch()
            }
        }
}

#Preview {
    ContentView()
}
