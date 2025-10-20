//
//  InfoView.swift
//  Place.io
//
//  Created by Turma02-Backup on 05/09/24.
//

import SwiftUI

struct InfoView: View {
    
    @State var img = "https://lh3.googleusercontent.com/p/AF1QipNN2UY-K4ZooD_qXvd2ezKanlBzkO2c2N15S3wg=s1360-w1360-h1020"
    @State var nome = "Central da Picanha"
    @State var nota = 5.0
    @State var nava = 1235
    @State var tipo = "Restaurante"
    @State var endereco = "Av. Plácido Aderaldo Castelo, 180 - Lagoa Seca, Juazeiro do Norte - CE, 63040-540"
    @State var horarios = "Seg: 10:00 - 22:00 / Ter: 10:00 - 22:00 / Qua: 10:00 - 22:00 "
    @State var tel = "(88) 91234-5678"
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    AsyncImage(url: URL(string: img)){ result in
                                result.image?
                                    .resizable()
                            }
                        .cornerRadius(10)
                        .frame(width: 300, height: 300)
                        .padding(.top)
                }
                VStack(alignment: .leading, spacing: 6) {
                    Text(nome)
                        .font(.title)
                        
                    HStack {
                        Text(String(nota)+" / 5.0")
                            //.padding(.leading)
                        Image(systemName: "star.fill")
                            .foregroundColor(.orange)
                        Text("(\(String(nava)))")
                        Spacer()
                    }
                    Text(tipo)
                        .bold()
                    Divider()
                    HStack {
                        Image(systemName: "mappin.and.ellipse")
                            .font(.title3)
                            .foregroundColor(.orange)
                        Text(endereco)
                    }
                    Divider()
                    HStack {
                        Image(systemName: "calendar.badge.clock")
                            .font(.title3)
                            .foregroundColor(.orange)
                        ScrollView(.horizontal) {
                            Text(horarios)
                        }
                    }
                    Divider()
                    HStack {
                        Image(systemName: "phone.fill")
                            .foregroundColor(.orange)
                        Text(tel)
                    }
                    Divider()
                    NavigationLink(destination: CommentsView()) {
                        Text("Comentários / Avaliar")
                    }
                    .padding(.top)
                    .padding(.leading, 80)
                }
                
            }
            .padding(.leading)
        }
    }
}

#Preview {
    InfoView()
}
