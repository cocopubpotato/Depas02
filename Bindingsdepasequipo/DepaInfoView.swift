//
//  DepaInfoView.swift
//  Bindingsdepasequipo
//
//  Created by win603 on 30/09/26.
//

import SwiftUI

struct DepaInfoView: View {
    
    @State var a: String = "a"
    @State var b: String = "b"
    
    
    var body: some View {
        ScrollView(.vertical){
            VStack( alignment: .center){
                Image(.depa01)
                    .resizable()
                    .frame(width: 350, height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    

                Label(a, systemImage: "location")
                    .font(.largeTitle)
                
                Label(b, systemImage: "location")
                    .font(.largeTitle)
                
                Label("hola", systemImage: "location")
                    .font(.largeTitle)
                
                Label("hola", systemImage: "location")
                    .font(.largeTitle)
                
                Label("hola", systemImage: "location")
                    .font(.largeTitle)
                
                Spacer(minLength: 40)
                
            
                
            }.padding(10)
                .frame(width: 350, height:450)
                .background(Color.mint)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
                
        }
        
        
    }
}

#Preview {
    DepaInfoView()
}
