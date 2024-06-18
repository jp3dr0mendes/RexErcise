//
//  ShopView.swift
//  RexErcise
//
//  Created by Kaique Diniz on 18/06/24.
//

import SwiftUI

struct ShopView: View {
    var username: String
    var coins: Int
    @State private var selectedItem: String? = nil
    @State private var showSheet = false
    
    var body: some View {
        let columns = [
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
        
        VStack {
            HStack {
                Text("Olá, \(username)")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.horizontal, 8)
                Spacer()
                
                HStack(spacing: 16) {
                    Text("\(coins)")
                        .font(.title3)
                        .foregroundColor(.orange)
                    Image("coin")
                        .resizable()
                        .frame(width: 24, height: 24)
                }
            }
            .padding(.horizontal, 16)
            
            ScrollView {
                LazyVGrid(columns: columns, spacing: 16) {
                    ItemCard(itemName: "Óculos", itemImage: "oculos", itemPrice: "100", selectedItem: $selectedItem, showSheet: $showSheet)
                    ItemCard(itemName: "Chapéu", itemImage: "chapeu", itemPrice: "150", selectedItem: $selectedItem, showSheet: $showSheet)
                    ItemCard(itemName: "Camiseta", itemImage: "camiseta", itemPrice: "200", selectedItem: $selectedItem, showSheet: $showSheet)
                    ItemCard(itemName: "Tênis", itemImage: "tenis", itemPrice: "250", selectedItem: $selectedItem, showSheet: $showSheet)
                }
                .padding(.horizontal, 16)
            }
            
            Spacer()
        }
        .background(Color.blue)
        .padding(.top, 50)
        .sheet(isPresented: $showSheet) {
            if let selectedItem = selectedItem {
                PurchaseConfirmationView(itemName: selectedItem, itemPrice: "100", showSheet: $showSheet)
                    .presentationDetents([.fraction(0.3)]) // Define o tamanho da sheet
            } else {
                Text("Erro: Nenhum item selecionado")
                    .foregroundColor(.red)
                    .font(.title)
            }
        }
    }
}

struct PurchaseConfirmationView: View {
    var itemName: String
    var itemPrice: String
    @Binding var showSheet: Bool
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Gostaria de comprar o item \(itemName) por \(itemPrice) moedas?")
                .font(.headline)
                .padding()
            
            Button(action: {
                // lógica para validar a compra do item
                showSheet = false
            }) {
                Text("Confirmar compra")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.green)
                    .cornerRadius(10)
            }
            
            Button(action: {
                // dismiss
                showSheet = false
            }) {
                Text("Cancelar")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
    let    testeLint = "oi "
}

struct ShopView_Previews: PreviewProvider {
    static var previews: some View {
        ShopView(username: "Gabriel", coins: 1100)
    }
}
