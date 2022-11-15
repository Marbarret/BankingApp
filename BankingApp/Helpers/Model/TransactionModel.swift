//
//  TransactionModel.swift
//  BankingApp
//
//  Created by Marcylene Barreto on 12/11/22.
//

import Foundation

struct TransactionModel: Identifiable {
    var id = UUID()
    var img: String
    var name: String
    var category: String
    var value: String
}

var transactions: [TransactionModel] = [
    TransactionModel(img: "netflix", name: "Netflix", category: "Entertainment", value: "- R$ 50"),
    TransactionModel(img: "walmart", name: "Walmart", category: "Supermarket", value: "- R$ 250"),
    TransactionModel(img: "photo", name: "Maria Charles", category: "Entertainment", value: "- R$ 50")
]
