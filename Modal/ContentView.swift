//
//  ContentView.swift
//  Modal
//
//  Created by Oscar Varela on 14/08/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    @State private var show = false ;
    
    var body: some View {
        NavigationView {
            VStack{
                NavigationLink(destination: SegundaVista()){
                    Text("Segunda vista")
                }
                NavigationLink(destination: TerceraVista()){
                    Text("Tercera vista")
                }
                Button("Abrir Modal"){
                    show = true
                }
                .sheet(isPresented: $show){
                    VentanaModal()
                    
                }.navigationTitle("Navegación")
                    .toolbar{
                        HStack{
                            NavigationLink(destination: SegundaVista()){
                                Image(systemName: "plus")
                            }
                            NavigationLink(destination: TerceraVista()){
                                Image(systemName: "camera")
                            }
                        }
                        
                    }
                
            }
            
        }
    }
}
    



   


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
