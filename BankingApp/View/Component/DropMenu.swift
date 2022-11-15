//
//  DropMenu.swift
//  BankingApp
//
//  Created by Marcylene Barreto on 14/11/22.
//

import SwiftUI

struct DropMenu: View {
    @State var expand = false
//    var card: CardModel
    var number: String
    var logo: String
    var balance: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            titleDropMenu
            
            if expand {
                ForEach(cards) { card in
                    ItemsOption(card: card)
                }
            }
        }
        .padding(.leading, 25)
        .frame(maxWidth: .infinity, maxHeight: 100)
        .animation(.spring())
    }
}

//struct DropMenu_Previews: PreviewProvider {
//    static var previews: some View {
//        DropMenu(card: CardModel(balance: "35354", color: Color.theme.black, date: "45/54", logo: "", number: ""))
//    }
//}

extension DropMenu {
    private var titleDropMenu: some View {
        HStack {
            Image(logo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 30)

            VStack(alignment: .leading, spacing: 6) {
                Text(number)
                    .font(.callout)
                    .foregroundColor(Color.theme.black)
                    .bold()
            
                Text("Balance \(balance)")
                    .font(.subheadline)
                    .foregroundColor(Color.theme.gray)
            }
            .padding(.leading, 25)
            
            Spacer()
            
            Image(systemName: expand ? "chevron.up" : "chevron.down")
                .resizable()
                .frame(width: 20, height: 10)
                .foregroundColor(Color.theme.black)
                .padding(.trailing, 25)
        }
        .onTapGesture {
            self.expand.toggle()
        }
    }
}

struct ItemsOption: View {
    var card: CardModel

    var body: some View {
        HStack {
            Button(action: {
 
            }, label: {
                Image(card.logo)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 30)
                
                VStack(alignment: .leading, spacing: 6) {
                    Text(card.number)
                        .font(.callout)
                        .foregroundColor(Color.theme.black)
                        .bold()
                    
                    Text("Balance \(card.balance)")
                        .font(.subheadline)
                        .foregroundColor(Color.theme.gray)
                }
                .padding(.leading, 25)
            })
        }
    }
}
