//
//  ItemCard.swift
//  RexErcise
//
//  Created by Kaique Diniz on 18/06/24.
//

import SwiftUI

struct ItemCard: View {
    var itemName: String
    var itemImage: String
    var itemPrice: String
    @Binding var selectedItem: String?
    @Binding var showSheet: Bool
    
    var body: some View {
        VStack {
            Text(itemName)
                .font(.headline)
                .padding(.top, 8)
            
            Image(itemImage)
                .resizable()
                .scaledToFit()
                .frame(height: 50)
                .padding(.vertical, 8)
            
            Text(itemPrice)
                .font(.subheadline)
                .padding(.bottom, 8)
        }
        .frame(width: 140, height: 118)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.white)
        )
        .padding(.horizontal, 16)
        .padding(.vertical, 8)
        .onTapGesture {
            selectedItem = itemName
            showSheet = true
        }
    }
}
