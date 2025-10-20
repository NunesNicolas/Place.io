//
//  ContentView.swift
//  Place.io
//
//  Created by Turma02-Backup on 05/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            VStack {

                TabView{
                        EnjoyView()
                        .tabItem {
                            Label("Tinder", systemImage: "rectangle.portrait.and.arrow.forward.fill")
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
        }
}

#Preview {
    ContentView()
}
