//
//  Model.swift
//  TesteAppdia
//
//  Created by Turma02-28 on 04/09/24.
//

import Foundation
struct dia: Decodable, Hashable{
    let dia1: String?
    let dia2: String?
    let dia3: String?
    let dia4: String?
    let dia5: String?
    let dia6: String?
    let dia7: String?
}

struct comenta: Decodable, Hashable{
    var comentario: String?
    var nome: String?
    var umaAval: Double?
}

struct Local: Decodable, Hashable {
    let _id: String
    let nomeLocal: String?
    let horarioFuncionamento: [dia]?
    let endereco: String?
    let descricao: String?
    let latitude: String?
    let logitude: String?
    let telefone: String?
    let foto: String?
    let categoria: String?
    var save: Int?
    var coment: [comenta]?
    
}

