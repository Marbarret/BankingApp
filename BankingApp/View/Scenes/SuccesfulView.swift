//
//  SuccesfulView.swift
//  BankingApp
//
//  Created by Marcylene Barreto on 14/11/22.
//

import SwiftUI

struct SuccesfulView: View {
    @Binding var shouldPopToRootView: Bool
    var user: UserTransfe

    var body: some View {
        VStack {
            VStack {
                Image("success")
                    .frame(width: 100, height: 100)
                
                VStack {
                    Text("$ 320 has been\n")
                        .font(.title2)
                        .fontWeight(.bold)
                        + Text("sent to \(user.name)!")
                        .font(.title2)
                        .fontWeight(.bold)
                }
                .frame(width: 200, height: 100)
                .padding()
            }
            .padding(.top, 150)
            Spacer()
            buttonsView
        }
    }
}

struct SuccesfulView_Previews: PreviewProvider {
    static var previews: some View {
        SuccesfulView(shouldPopToRootView: .constant(true), user: UserTransfe(name: "Maria Luiza", img: "photo", key: "294 *** *** 00"))
    }
}

extension SuccesfulView {
    private var buttonsView: some View {
        VStack {
            Button(action: { self.shouldPopToRootView = false}, label: {
                Text("View receipt")
                    .font(.body)
                    .foregroundColor(Color.theme.primaryBlue)
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .background(Color.white)
                    .cornerRadius(10)
            })
            
            Button(action: { self.shouldPopToRootView = false}, label: {
                Text("Close")
                    .font(.body)
                    .foregroundColor(Color.theme.lightGray)
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .background(Color.theme.primaryBlue)
                    .cornerRadius(10)
                    .padding()
            })
        }
    }
}
