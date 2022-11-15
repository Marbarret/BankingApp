//
//  SearchView.swift
//  BankingApp
//
//  Created by Marcylene Barreto on 12/11/22.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .font(.title2)
                .padding(.leading, 10)
                .foregroundColor(Color.theme.mediumGray)
            
            Text("Write nome, phone or card number")
                .font(.body)
                .foregroundColor(Color.theme.mediumGray)
            
        }
        .frame(maxWidth: .infinity, maxHeight: 50)
        .background(Color.theme.mediumGray.opacity(0.4))
        .cornerRadius(20)
        .padding([.leading, .trailing], 20)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
            .previewLayout(.sizeThatFits)
    }
}
