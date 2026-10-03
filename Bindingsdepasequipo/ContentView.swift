//
//  ContentView.swift
//  Bindingsdepasequipo
//
//  Created by Karla Flores on 28/09/26.
//

import SwiftUI

struct ContentView: View {
    @State private var departamentos = DepartamentoViewModel().getdepartamentos()
    @State private var reservados: [Int] = []
    
    private let maxReservas = 2
    
    var todosfavoritos: Bool {
        departamentos.allSatisfy { $0.favorito }
    }

    var body: some View {
        ScrollView(.vertical) {
            LazyVStack(alignment: .leading) {
                Text("Departamentos")
                    .font(.title)
                
                Toggle("Marcar todos como favoritos", isOn: Binding(
                    get: { todosfavoritos },
                    set: { nuevo in
                        for i in departamentos.indices {
                            departamentos[i].favorito = nuevo
                        }
                    }
                ))

                if todosfavoritos {
                    GroupBox { Text("Todos han sido marcados") }
                }

                ForEach($departamentos) { $depa in
                    departamentoView(direccion: depa.direccion, nombre: depa.nombre,
                                     precio: depa.precio, superficie: depa.superficie,
                                     calificacion: depa.calificacion,
                                     reservar: Binding(
                                        get: { reservados.contains(depa.id) },
                                        set: { nuevo in
                                            if nuevo {
                                                if reservados.count < maxReservas && !reservados.contains(depa.id) {
                                                    reservados.append(depa.id)
                                                }
                                            } else {
                                                reservados.removeAll { $0 == depa.id }
                                            }
                                        }
                                     ), favorito: $depa.favorito,
                                     imagen: depa.imagen)
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    ContentView()
}
