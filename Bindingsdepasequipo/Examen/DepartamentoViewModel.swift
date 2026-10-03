//
//  DepartamentoViewModel.swift
//  PrimerParcial
//
//  Created by Karla Flores on 23/09/26.
//

import Foundation

struct DepartamentoViewModel {
    func getdepartamentos() -> [Departamento] {
        let departamentos = [
            
            
            Departamento(id: 1, imagen: "depa01", nombre: "GH Raíces | 1F", direccion: "Ampliación, Cd Madero", precio: "$25,000", superficie: "29.02 m2", calificacion: "4.7", reserva: false, favorito: false),
            
            Departamento(id: 2, imagen: "depa02", nombre: "Hmlet Raíces | 8F", direccion: "Petrolera, Tampico", precio: "$14,960", superficie: "26.15 m2", calificacion: "---", reserva: false, favorito: false),

            Departamento(id: 3, imagen: "depa03", nombre: "Oak Century | 5F", direccion: "Miralta, Altamira", precio: "$16,400", superficie: "25.08 m2", calificacion: "4.7", reserva: false, favorito: false),

            Departamento(id: 4, imagen: "depa04", nombre: "Fontana SH | 4F", direccion: "Los Mangos, Madero", precio: "$17,300", superficie: "27.22 m2", calificacion: "4.6", reserva: false, favorito: false),

            Departamento(id: 5, imagen: "depa05", nombre: "Homestay Iest | 4F", direccion: "Grossman, Altamira", precio: "$18,500", superficie: "25.74 m2", calificacion: "5.0", reserva: false, favorito: false)
            
        ]
        return departamentos
    }
}
