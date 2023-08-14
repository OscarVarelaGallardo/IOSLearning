//
//  VentanaModal.swift
//  Modal
//
//  Created by Oscar Varela on 14/08/23.
//

import SwiftUI


struct VentanaModal:View {
    
    @Environment(\.presentationMode) var closeModal
    var texto : String;
    
    var body: some View{
            ZStack{
                    Color.orange.edgesIgnoringSafeArea(.all)
                    VStack{
                    Text(texto)
                        .padding()
                        .font(.title).foregroundColor(.white).bold()
                        Button("Cerrar"){
                        closeModal.wrappedValue.dismiss()
                            
                    }
                }
            }
        }
    }
    

