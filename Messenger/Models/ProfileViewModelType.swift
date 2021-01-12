//
//  ProfileViewModelType.swift
//  Messenger
//
//  Created by Cristina Bolohan on 12.01.21.
//

import Foundation

enum ProfileViewModelType {
    case info, logout
}

struct ProfileViewModel {
    let viewModelType: ProfileViewModelType
    let title: String
    let handler: (() -> Void)?
}
