//
//  ViewModel.swift
//  TesteAppdia
//
//  Created by Turma02-28 on 04/09/24.
//

import Foundation

class ViewModel : ObservableObject {
    @Published var chars : [Local] = []
    
    func fetch(){
        let task = URLSession.shared.dataTask(with: URL(string: "http://127.0.0.1:1880/read")!){data, _, error in
            do{
                self.chars = try JSONDecoder().decode([Local].self, from: data!)
            } catch {
                print(error)
            }
        }
        task.resume()
    }
    
}
