//
//  Student.swift
//  Koalateer
//
//  Created by Ajay Moturi on 10/25/22.
//

import Foundation

enum School: String, CaseIterable, Identifiable {
    var id: String {self.rawValue}
    case GeorgiaTech
    case KennesawState
    case GSU
}
