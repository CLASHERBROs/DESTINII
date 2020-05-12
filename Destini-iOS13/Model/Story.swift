//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation
struct Story {
    
    let title : String
    let choice1 : String
    let choice2 : String
    var choice1Destination : Int
     var choice2Destination : Int
    init(_ a : String,_ b:String,_ d:Int,_ c:String,_ e:Int)
    {
        title = a
        choice1 = b
        choice2 = c
        choice1Destination = d
        choice2Destination = e
    }
}
