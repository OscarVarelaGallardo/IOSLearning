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
    @State private var texto = "";
    
    var body: some View {
        NavigationView {
            
            VStack{
                TextField("Ingresa un texto", text: $texto)
                
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
                    VentanaModal(texto: texto)
                    //ios 15
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
                //ios 14
            }.navigationBarTitle("Navegación")
                .navigationBarItems(leading: <#T##View#>){
                    HStack{
                        NavigationLink(destination: SegundaVista()){
                            Image(systemName: "plus")
                        }
                        NavigationLink(destination: TerceraVista()){
                            Image(systemName: "camera")
                        }
                    }
                    
                }
                
            }.padding(.all)
            
        }
    }
}
    



   


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
