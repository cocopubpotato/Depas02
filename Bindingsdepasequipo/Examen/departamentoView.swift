//
//  departamentoView.swift
//  PrimerParcial
//
//  Created by Zurisabdai Núñez Velázquez on 09/09/26.
//

import SwiftUI

struct departamentoView: View {
    @State var direccion: String
    @State var nombre: String
    @State var precio: String
    @State var superficie: String
    @State var calificacion: String
    @Binding var reservar: Bool
    @Binding var favorito: Bool
    @State var mostraralerta: Bool = false
    @State var imagen: String = "depa01"

    var body: some View {
        VStack {
            ZStack{
                Image(imagen)
                    .resizable()
                    .frame(width: 350, height: 200)
                    .overlay(reservar ? Rectangle()
                        .fill(Color.black.opacity(0.5)) : Rectangle()
                        .fill(Color.black.opacity(0.0)))
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Text(reservar ? "Reservado" : " " )
                    .foregroundColor(.white)
                
                HStack (spacing : 100){
                    Button(action: {}){
                        Image(systemName: "location")
                        Text(direccion)
                    }
                    .frame(width: 185, height: 20)
                    .font(.footnote)
                    .foregroundStyle(Color.white)
                    .padding(5)
                    .background(Color.black.opacity(0.5))
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                    Button(action: {
                        favorito.toggle()
                        
                        if favorito {
                            mostraralerta = true
                            
                        }else{
                            
                        }
                    }){
                        Image(systemName: favorito ? "heart.fill" : "heart")
                            .font(.footnote)
                            .frame(width: 20, height: 20)
                    }
                    .foregroundStyle(Color.white)
                    .padding(5)
                    .background(Color.black.opacity(0.5))
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                }
                .offset(x: 0, y: -75)
                
                Button(action: {
                    reservar.toggle()
                }){
                    Text(reservar ? "Cancelar" : "Reservar")
                    Image(systemName: reservar ? "xmark" : "house")
                }
                .foregroundStyle(Color.white)
                .font(.footnote)
                .frame(width: 150, height: 25)
                .background(Color.colorexamen)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .offset(x:0, y: 80)
            }
            .frame(width: 300, height: 200)
            
            VStack{
                HStack{
                    Text(nombre)
                    
                    Spacer()
                    
                    HStack{
                        Image(systemName: "star.fill")
                            .foregroundStyle(.yellow)
                        
                        Text(calificacion)
                    }
                }
                .padding(.horizontal,5)
                
                HStack{
                    HStack(spacing: 5){
                        Text(precio)
                            .font(Font.system(size: 16).weight(.bold))
                        Text("al mes")
                    }
                    
                    Spacer()
                    
                    Text(superficie)
                        .foregroundColor(Color.gray)
                }
                .padding(.horizontal,5)
            }
            .frame(width: 350, height: 50)
            .padding(.bottom, 8)
            .alert("Departamento de \(direccion) ha sido establecido como preferido exitosamente", isPresented: $mostraralerta){
                Button("Ok"){}
            }
        }
    }
}

#Preview {
    departamentoView(direccion: "sad", nombre: "sd", precio: "dsa", superficie: "adds", calificacion: "awads", reservar: .constant(false), favorito: .constant(false), imagen: "depa01")
}
