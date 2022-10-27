//
//  Gender.swift
//  Koalateer
//
//  Created by Ajay Moturi on 10/25/22.
//

import Foundation

enum Gender: String, CaseIterable, Identifiable {
    var id: String {self.rawValue}
    case male
    case female
    case other
}
