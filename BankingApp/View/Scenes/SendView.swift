//
//  SendView.swift
//  BankingApp
//
//  Created by Marcylene Barreto on 13/11/22.
//

import SwiftUI

struct SendView: View {
    @Binding var rootIsActive: Bool
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
//    var card: CardModel
//
//    @ObservedObject var viewModel: TransactionViewModel
//    init(rootIsActive: Binding<Bool>, viewModel: TransactionViewModel) {
//        self._rootIsActive = rootIsActive
//        _viewModel = ObservedObject(wrappedValue: viewModel)
//    }
    
    var body: some View {
        VStack {
            titleView
            SearchView()
            Spacer()
            userList
        }
        .navigationBarHidden(true)
    }
}

//struct SendView_Previews: PreviewProvider {
//    static var previews: some View {
//        SendView(rootIsActive: .constant(true), card: CardModel)
//    }
//}

extension SendView {
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
    
    private var userList: some View {
        ScrollView {
            ForEach(users) { user in
                let destination = DetailTransference(activeRootView: self.$rootIsActive, user: user, card: CardModel(balance: "R$ 5.300,00", color: Color.theme.primaryBlue, date: "02/29", logo: "visa-logo", number: "**** 2343"))
                    NavigationLink(
                        destination: destination,
                        label: {
                            UserTransferRow(photo: user.img, name: user.name)
                        })
            }
        }
        .frame(maxWidth: .infinity, maxHeight: 640)
    }
}
