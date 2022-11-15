//
//  TransactionView.swift
//  BankingApp
//
//  Created by Marcylene Barreto on 12/11/22.
//

import SwiftUI

struct TransactionView: View {
    @State var showSearch: Bool = false
    @State var search = ""
    
    var body: some View {
        LazyVStack {
            VStack {
                Color.theme.mediumGray.frame(width: 100, height: 20 / UIScreen.main.scale)
                    .cornerRadius(7)
            }
            .padding(.bottom, 30)
            
            HStack {
                Text(showSearch ? "" : "Recente Transactions")
                    .font(.callout)
                    .fontWeight(.bold)
                
                Spacer()
                
                Button(action: { showSearch = true }, label: {
                    if showSearch {
                        searchPress
                    } else {
                        searchNormal
                    }
                })
            }
            .frame(maxWidth: .infinity, maxHeight: 40, alignment: .leading)
            .padding([.leading, .trailing], 30)
            
            ForEach(transactions) { transac in
                TransactionRow(transaction: transac)
            }
            .padding(.leading)
        }
    }
    
    func searchItem() {
        
    }
}

struct TransactionView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionView()
    }
}

extension TransactionView {
    
    private var searchNormal: some View {
        VStack {
            Image(systemName: "magnifyingglass")
                .font(.callout)
                .foregroundColor(Color.theme.black)
        }
    }
    
    private var searchPress: some View {
        HStack {
            TextField("Search", text: $search)
                .font(.body)
                .padding()
                .foregroundColor(Color.theme.black)
                .background(Color.theme.mediumGray.opacity(0.4))
                .cornerRadius(20)
            
            Image(systemName: "magnifyingglass")
                .font(.callout)
                .foregroundColor(Color.theme.black)

            
            Button(action: { showSearch = false }, label: {
                Image(systemName: "xmark")
                    .font(.callout)
                    .foregroundColor(Color.theme.black)
            })
        }
        .padding(.horizontal)
    }
}
