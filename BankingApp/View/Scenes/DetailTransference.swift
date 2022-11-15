//
//  DetailTransference.swift
//  BankingApp
//
//  Created by Marcylene Barreto on 13/11/22.
//

import SwiftUI

struct DetailTransference: View {
    @Binding var activeRootView: Bool
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var user: UserTransfe
    var card: CardModel
    
    @State var value = "$ "
    
    var body: some View {
        VStack {
            titleView
            
            userInformation
            
            valueTransference
            
            cardSelected
            
            VStack {
                DropMenu(number: card.number, logo: card.logo, balance: card.balance)
            }
            .frame(maxWidth: .infinity, maxHeight: 150)
            
            Spacer()
            
            NavigationLink(
                destination: SuccesfulView(shouldPopToRootView: $activeRootView, user: user),
                label: {
                    Text("Send")
                        .font(.body)
                        .foregroundColor(Color.theme.lightGray)
                        .frame(maxWidth: .infinity, maxHeight: 50)
                        .background(Color.theme.primaryBlue)
                        .cornerRadius(10)
                        .padding()
                })
        }
        .navigationBarHidden(true)
    }
}

extension DetailTransference {
    private var titleView: some View {
        HStack(spacing: 50) {
            Button(action: { self.presentationMode.wrappedValue.dismiss() }, label: {
                Image(systemName: "chevron.left")
                    .font(.headline)
                    .foregroundColor(Color.theme.black)
                    .padding(.trailing, 20)
            })
            
            Text("Send money to")
                .font(.system(size: 25))
                .fontWeight(.bold)
                .foregroundColor(Color.theme.black)
                .padding(.trailing, 80)
        }
        .frame(maxWidth: .infinity, maxHeight: 80)
    }
    
    private var userInformation: some View {
        VStack {
            Image(user.img)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .background(Color.theme.black)
                .frame(width: 64, height: 64)
                .clipShape(RoundedRectangle(cornerRadius: 25))
            
            Text(user.name)
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(Color.theme.black)
            
            Text(user.key)
                .font(.callout)
                .foregroundColor(Color.theme.mediumGray)
        }
    }
    
    private var valueTransference: some View {
        VStack(alignment: .center) {
            TextField("Value", text: $value)
                .font(.system(size: 30))
                .padding(.leading)
                .frame(width: 200, height: 80, alignment: .center)
                .background(Color.white)
                .cornerRadius(20)
            
            Text("No fee")
                .font(.callout)
                .foregroundColor(Color.theme.mediumGray)
        }
    }
    
    private var cardSelected: some View {
        VStack {
            Text("Select your account")
                .font(.callout)
                .foregroundColor(Color.theme.mediumGray)
        }
        .padding([.top, .bottom], 30)
    }
}
