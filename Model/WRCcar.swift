//
//  WRCcar .swift
//  ConsumeCSV
//
//  Created by John Darren on 06/03/2019.
//  Copyright © 2019 Nerrad Sapiluh. All rights reserved.
//

import Foundation

class WRCcar: CustomStringConvertible 	{
    
    var id:String
    var name:String
    var category:String
    var brand:String
    var image:String
    
    init(id:String, name:String, category:String, brand:String, image:String ) {
        self.id = id
        self.name = name
        self.category = category
        self.brand = brand
        self.image = image
    }
    
    public var description: String {
        return "id:\(id) - name:\(name) - section:\(category) - country:\(brand) - image:\(image)"
    }
    
    
}
