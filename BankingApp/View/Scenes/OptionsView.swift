//
//  OptionsView.swift
//  BankingApp
//
//  Created by Marcylene Barreto on 12/11/22.
//

import SwiftUI

struct OptionsView: View {
    var item: OptionModel
    @SceneStorage("mainView") var mainViewType: String = Category.send.rawValue

    var body: some View {
        viewButton
//        switch mainViewType {
//        case Category.more.rawValue:
//            viewButton
//        case Category.send.rawValue:
//            NavigationLink(destination: SendView(shouldPopToRootView: self.$rootIsActive)) {
//                viewButton
//            }
//        case Category.payment.rawValue:
//            viewButton
//        case Category.shape.rawValue:
//            viewButton
//        default:
//            Text("")
//        }
    }
}

//struct OptionsView_Previews: PreviewProvider {
//    static var previews: some View {
//        OptionsView(item: OptionModel(name: "Pay", category: .payment), action: ())
//            .previewLayout(.sizeThatFits)
//    }
//}

extension OptionsView {
    private var viewButton: some View {
        VStack {
            Image(item.getImage())
                .frame(width: 64, height: 64)
                .background(Color.white)
                .clipShape(Circle())
                .shadow(color: Color.theme.lightGray, radius: 12, x: 5, y: 5)
            
            Text(item.name)
                .font(.callout)
                .fontWeight(.semibold)
                .foregroundColor(Color.theme.black)
        }
        .padding(.bottom, 30)
    }
}
