//
//  ContentView.swift
//  BankingApp
//
//  Created by Marcylene Barreto on 12/11/22.
//

import SwiftUI

struct ContentView: View {
    @State var isActive: Bool = false
//    var card: CardModel
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("My Account")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    Image(systemName: "bell.badge")
                        .font(.title)
                }// HStack
                .padding()
                
                ScrollView(.horizontal, showsIndicators: false) {
                    LazyHStack {
                        ForEach(cards) { card in
                            CardsView(card: card)
                        }// ForEach
                    }// LazyHStack
                    .padding(.top, -50)
                }// ScrollView
                .padding(.leading)
                .padding(.top, -50)
                
                Spacer()
                
                HStack(spacing: 30) {
                    ForEach(options) { opt in
                        let destination = SendView(rootIsActive: $isActive)
                        NavigationLink(
                            destination: destination,
                            isActive: self.$isActive,
                            label: {
                                OptionsView(item: opt)
                            })// NavigationLink
                    }// ForEach
                }// HStack
                .padding(.top, -40)
                
                TransactionView()
            }// VStack
            .navigationBarHidden(true)
        }// NavigationView
    }
}
