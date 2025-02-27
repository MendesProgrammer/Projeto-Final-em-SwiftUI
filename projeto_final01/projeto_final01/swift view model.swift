//
//  swift view model.swift
//  projeto_final01
//
//  Created by Turma01-2 on 27/02/25.
//

import Foundation

class SosUfuPsicologos : ObservableObject {
    
    @Published var SosPsi : [Psicologos] = []
    
    func fetch(){
        var url = "http://192.168.128.100:1880/getSos"
        
        var task = URLSession.shared.dataTask(with: URL(string: url)!){data, _, ErrorPointer
            in
            
            do {
                self.SosPsi = try JSONDecoder().decode([Psicologos].self, from: data!)
            } catch{
                print(error)
            }
        }
        task.resume()
    }
}
