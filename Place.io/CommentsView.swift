//
//  CommentsView.swift
//  Place.io
//
//  Created by Turma02-Backup on 05/09/24.
//

import SwiftUI

struct CommentsView: View {
    var body: some View {
        NavigationStack{
            ZStack {
                VStack{
                   // Spacer()
                    HStack {
                        Spacer()
                        Text("Digite seu comentário")
                        Spacer()
                        Button {
                        } label: {
                            Image(systemName: "plus.message")
                                .frame(width:70,height: 70)
                                .background(.clarinho)
                                .foregroundStyle(.black)
                                .cornerRadius(10.0)
                                .padding(30)
                        }
                    }
                    .frame(width: 400,height: 90)
                    .background(.cinzinha)
                    HStack {
                        Image(systemName:"person")
                            .resizable()
                            .frame(width:30,height:30)
                            .padding()
                        Text("Muito bom!")
                            .font(.subheadline)
                                .bold()
                                .padding(5)
                        Spacer()
                        Text("4,7 / 5,0")
                            .bold()
                            .font(.subheadline)
                        Image(systemName: "star.fill")
                            .foregroundStyle(.yellow)
                            .padding()
                    }
                    HStack {
                        Image(systemName:"person")
                            .resizable()
                            .frame(width:30,height:30)
                            .padding()
                        Text("Maravilhoso!")
                            .font(.subheadline)
                                .bold()
                                .padding(5)
                        Spacer()
                        Text("4,9 / 5,0")
                            .bold()
                            .font(.subheadline)
                        Image(systemName: "star.fill")
                            .foregroundStyle(.yellow)
                            .padding()
                    }
                    HStack {
                        Image(systemName:"person")
                            .resizable()
                            .frame(width:30,height:30)
                            .padding()
                        Text("Mais ou menos...!")
                            .font(.subheadline)
                                .bold()
                                .padding(5)
                        Spacer()
                        Text("3,9 / 5,0")
                            .font(.subheadline)
                            .bold()
                        Image(systemName: "star.fill")
                            .foregroundStyle(.yellow)
                            .padding()
                    }
                }
            }
            Spacer()
        }
    }
}

#Preview {
    CommentsView()
}
