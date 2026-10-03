//
//  Departamento.swift
//  PrimerParcial
//
//  Created by Karla Flores on 23/09/26.
//

import Foundation

struct Departamento : Identifiable {
    
    let uuid: UUID = UUID()
    let id : Int
    let imagen : String
    let nombre : String
    let direccion : String
    let precio : String
    let superficie : String
    let calificacion : String
    var reserva : Bool
    var favorito : Bool
}
