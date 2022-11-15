//
//  TransactionRow.swift
//  BankingApp
//
//  Created by Marcylene Barreto on 12/11/22.
//

import SwiftUI

struct TransactionRow: View {
    var transaction: TransactionModel
    
    var body: some View {
        HStack {
            Image(transaction.img)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .background(Color.theme.black)
                .frame(width: 50, height: 50)
                .clipShape(RoundedRectangle(cornerRadius: 25))
                

            VStack(alignment: .leading, spacing: 6) {
                Text(transaction.name)
                    .font(.callout)
                    .foregroundColor(Color.theme.black)
            
                Text(transaction.category)
                    .font(.subheadline)
                    .foregroundColor(Color.theme.gray)
            }
            .padding(.leading, 5)
            
            Spacer()
            VStack(alignment: .trailing) {
                Text(transaction.value)
                    .font(.callout)
                    .fontWeight(.bold)
                    .foregroundColor(Color.theme.black)
            }
            .padding()
        }
        .padding()
    }
}

struct TransactionRow_Previews: PreviewProvider {
    static var previews: some View {
        TransactionRow(transaction: TransactionModel(img: "photo", name: "Netflix", category: "Entertainment", value: "R$ 50"))
            .previewLayout(.sizeThatFits)
    }
}
