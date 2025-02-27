//
//  Earth.swift
//  projeto_final01
//
//  Created by Turma01-8 on 26/02/25.
//

import SwiftUI

struct Earth: View {
    var body: some View {
        @State var select = "Uberlandia"
        var lugares = [
            {"Monte Carmelo"},
            {"Ituiutaba"},
            {"Uberlandia"},
            {"Patos de Minas"}
        ]
        NavigationStack {
            ZStack {
                ScrollView {
                    VStack {
                        Picker("ESCOLHA UM LUGAR", selection: $select) {
                            
                                
                            }
                        }
                    }
                }
            }
        }
    }

#Preview {
    Earth()
}
