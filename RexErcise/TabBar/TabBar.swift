//
//  TabBar.swift
//  RexErcise
//
//  Created by Kaique Diniz on 18/06/24.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Pagina inicial", systemImage: "pawprint.fill")
                }
            ShopView(username: "Teste", coins: 100)
                .tabItem {
                    Label("Loja", systemImage: "wallet.pass.fill")
                }
        }
    }
}

#Preview {
    TabBar()
}
