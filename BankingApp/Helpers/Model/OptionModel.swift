//
//  OptionModel.swift
//  BankingApp
//
//  Created by Marcylene Barreto on 12/11/22.
//

import Foundation

struct OptionModel: Codable, Identifiable {
    var id = UUID()
    var name: String
    var category: Category
    
    func getImage() -> String {
        switch category {
        case .more: return "Table"
        case .send: return "Send"
        case .payment: return "Payment"
        case .shape: return "Shape"
        }
    }
}

let options: [OptionModel] = [
    OptionModel(name: "Top up", category: .payment),
    OptionModel(name: "Pay", category: .shape),
    OptionModel(name: "Send", category: .send),
    OptionModel(name: "More", category: .more)
]
