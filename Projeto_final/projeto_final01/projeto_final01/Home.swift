//
//  Home.swift
//  projeto_final01
//
//  Created by Turma01-8 on 26/02/25.
//

import SwiftUI

struct Home: View {
    
    @State private var rating = 0
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.cinza
                    
                VStack {
                    
                    VStack {
                        
                        Label(
                            title: { Text("Olá") },
                            icon: { Image(systemName: "ellipsis.message") }
                        )
                            .foregroundStyle(.laranjaescuro)
                            .font(.system(size: 25))
                        
                        HStack {
                            NavigationLink(destination: planos_acessiveis()){
                                Text("Planos acessiveis")
                                    .foregroundStyle(.white)
                                    .frame(width: 80, height: 80)
                                    .padding()
                                    .background(.laranjaescuro)
                                    .cornerRadius(10)
                            }
                                                            
                            NavigationLink(destination: Sessoes()){
                                Text("Sessões")
                                    .foregroundStyle(.white)
                                    .frame(width: 80, height: 80)
                                    .padding()
                                    .background(.laranjaescuro)
                                    .cornerRadius(10)
                            }
                            
                            NavigationLink(destination: Conteudos()){
                                Text("Conteúdos")
                                    .foregroundStyle(.white)
                                    .frame(width: 80, height: 80)
                                    .padding()
                                    .background(.laranjaescuro)
                                    .cornerRadius(10)
                            }
                            
                        } // Fechamento do HStack
                        
                    } // Fechamento do VStack
                    .frame(maxWidth: .infinity, maxHeight: 300)
                    .background(.laranja)
                    .cornerRadius(30.0)
                    .ignoresSafeArea()
                    
                    NavigationLink(destination: AgendarSessao()){
                        HStack {
                            VStack {
                                Text("Agende sua")
                                    .foregroundStyle(.laranja)
                                    .font(.system(size: 20))
                                
                                Text("próxima sessão")
                                    .foregroundStyle(.laranja)
                                    .font(.system(size: 20))
                                
                            } // Fechamento do VStack
                            .frame(alignment: .leading)
                            
                            Image(systemName: "person.crop.circle")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 70, height: 70)
                                .foregroundColor(.laranjaescuro)
                        } // Fechamento do HStack
                        .frame(width: 360, height: 150)
                        .background(.white)
                        .cornerRadius(15.0)
                    } // Fechamento do NavigationLink
                    
                    ScrollView(.horizontal) {
                        HStack {
                            
                            Rectangle()
                                .foregroundColor(.white)
                                .frame(width: 100, height: 100)
                                .cornerRadius(10)
                            Rectangle()
                                .foregroundColor(.white)
                                .frame(width: 100, height: 100)
                                .cornerRadius(10)
                            
                            Rectangle()
                                .foregroundColor(.white)
                                .frame(width: 100, height: 100)
                                .cornerRadius(10)
                            Rectangle()
                                .foregroundColor(.white)
                                .frame(width: 100, height: 100)
                                .cornerRadius(10)
                            
                            
                        } // Fechamento do HStack
                        .frame(width: 370, height: 150)
                    } // Fechamento do ScrollView
                    
                    VStack {
                            Text("Avaliacão")
                            .foregroundStyle(.laranja)
                            .font(.system(size: 20))

//                        HStack {
//                            
//                            Image(systemName: "star.fill")
//                                .foregroundColor(.gray)
//                            Image(systemName: "star.fill")
//                                .foregroundColor(.gray)
//                            Image(systemName: "star.fill")
//                                .foregroundColor(.gray)
//                            Image(systemName: "star.fill")
//                                .foregroundColor(.gray)
//                            Image(systemName: "star.fill")
//                                .foregroundColor(.gray)
//
//
//                        } // Fechamento do HStack
//                        .frame(alignment: .leading)
                        
                        RatingView(rating: $rating)
                        
                        Button("Enviar"){
                            print("\(rating)")
                            rating = 0
                        }
                        .frame(width: 70, height: 40)
                        .background(.laranja)
                        .foregroundColor(.white)
                        .cornerRadius(40)
                        
                    } // Fechamento do VStack
                    .frame(width: 360, height: 150)
                    .background(.white)
                    .cornerRadius(15.0)

                    
                    Spacer()
                    
                } // Fechamento do VStack
                
            }// Fechamento do ZStack
            
        }// Fechamento do NavigationStack
    }
}

#Preview {
    Home()
}
