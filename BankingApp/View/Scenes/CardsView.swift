//
//  CardsView.swift
//  BankingApp
//
//  Created by Marcylene Barreto on 12/11/22.
//

import SwiftUI

struct CardsView: View {
    var card: CardModel
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(card.logo)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 25, height: 10)
                    .foregroundColor(Color.theme.lightGray)
                    .padding(.horizontal)
                
                Text(card.number)
                    .foregroundColor(Color.theme.lightGray)
                    .font(.caption)
                
                Spacer()
                
                Text(card.date)
                    .foregroundColor(Color.theme.lightGray)
                    .font(.caption)
                
            }// HStack
            .padding(10)
            .padding(.bottom, 30)
//            Spacer()
            Text("Balance")
                .foregroundColor(Color.theme.lightGray)
                .font(.caption)
                .padding(.leading, 20)
            
            HStack(alignment: .center) {
                Text("$")
                    .foregroundColor(Color.theme.lightGray)
                    .font(.title)
                    .fontWeight(.bold)
                
                Text(card.balance)
                    .foregroundColor(Color.theme.lightGray)
                    .font(.title)
                    .fontWeight(.bold)
            }
            .padding(.leading, 20)
        }// VStack
        .frame(width: 312, height: 168)
        .padding(8)
        .background(card.color)
        .cornerRadius(20)
    }
}
