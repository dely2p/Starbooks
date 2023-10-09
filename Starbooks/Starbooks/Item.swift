//
//  Item.swift
//  Starbooks
//
//  Created by elly on 2023/10/09.
//

import Foundation

struct Section: Hashable {
    let id: String
}

enum Item: Hashable {
    case menuSuggestion(MenuItem)
    case event(EventItem)
}

struct MenuItem: Hashable {
    let imageUrl: String
    let title: String
}

struct EventItem: Hashable {
    let imageUrl: String
    let title: String
    let description: String
}
