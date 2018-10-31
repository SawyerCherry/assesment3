//
//  personClass.swift
//  Assesment 3 iOS
//
//  Created by Sawyer Cherry on 10/31/18.
//  Copyright © 2018 Sawyer Cherry. All rights reserved.
//

import Foundation
import UIKit


class Person {
    let name: String
    let favoriteThing: String
    let favoriteColor: UIColor
    
    init(name: String, favoriteThing: String, favoriteColor: UIColor) {
        self.name = name
        self.favoriteThing = favoriteThing
        self.favoriteColor = favoriteColor
    }
}
