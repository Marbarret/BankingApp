//
//  CardModel.swift
//  BankingApp
//
//  Created by Marcylene Barreto on 12/11/22.
//

import SwiftUI

struct CardModel: Identifiable {
    var id = UUID()
    var color: Color
    var balance: String
    var logo: String
    var number: String
    var date: String
    
    enum CodingKeys: String, CodingKey {
        case color, balance, logo, number, date
    }
    
    init(balance: String, color: Color, date: String, logo: String, number: String) {
        self.balance = balance
        self.color = color
        self.date = date
        self.logo = logo
        self.number = number
    }
}

struct UserTransfe: Identifiable {
    var id = UUID()
    var name: String
    var img: String
    var key: String
}

let users: [UserTransfe] = [
    UserTransfe(name: "Rebecca Hale", img: "photo", key: "294 *** *** 00"),
    UserTransfe(name: "Olivia Taylor", img: "photo", key: "294 *** *** 00"),
    UserTransfe(name: "Elaine Covington", img: "photo", key: "294 *** *** 00"),
    UserTransfe(name: "Robert Cooper", img: "photo", key: "294 *** *** 00"),
    UserTransfe(name: "Austin Cannon", img: "photo", key: "294 *** *** 00"),
    UserTransfe(name: "Nadia Page", img: "photo", key: "294 *** *** 00"),
    UserTransfe(name: "Donald Waters", img: "photo", key: "294 *** *** 00"),
    UserTransfe(name: "Wayne Alvarado", img: "photo", key: "294 *** *** 00")
]

let cards: [CardModel] = [
    CardModel(balance: "R$ 5.300,00", color: Color.theme.primaryBlue, date: "02/29", logo: "visa-logo", number: "**** 2343"),
    CardModel(balance: "R$ 2.300,00", color: Color.theme.black, date: "03/27", logo: "mastercard", number: "**** 2305")
]
