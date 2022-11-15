//
//  UserTransferRow.swift
//  BankingApp
//
//  Created by Marcylene Barreto on 13/11/22.
//

import SwiftUI

struct UserTransferRow: View {
//    var users: UserTransfe
    var photo: String
    var name: String
    
    var body: some View {
        HStack(spacing: 5) {
            Image(photo)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .background(Color.theme.black)
                .frame(width: 50, height: 50)
                .clipShape(RoundedRectangle(cornerRadius: 25))
            
            Text(name)
                .font(.callout)
                .fontWeight(.bold)
                .foregroundColor(Color.theme.black)
                .padding(.leading, 15)
            
            Spacer()
            
            Image(systemName: "chevron.right")
                .font(.body)
                .foregroundColor(Color.theme.mediumGray)
                .padding()
        }
        .padding([.leading, .trailing], 20)
        .padding(.top, 7)
    }
}

struct UserTransferRow_Previews: PreviewProvider {
    static var previews: some View {
        UserTransferRow(photo: "", name: "")
            .previewLayout(.sizeThatFits)
    }
}
