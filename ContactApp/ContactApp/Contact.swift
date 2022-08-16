//
//  Contact.swift
//  ContactApp
//
//  Created by Rushabh Shah on 2022-08-14.
//

import Foundation
class Contact: NSObject, NSCoding, NSSecureCoding {
    
    static var supportsSecureCoding: Bool = false
    
    func encode(with coder: NSCoder) {
        coder.encode(name, forKey: "name")
        coder.encode(lastName, forKey: "lastName")
        coder.encode(number, forKey: "number")
    }
    
    required init?(coder: NSCoder) {
        name = coder.decodeObject(forKey: "name") as! String
        lastName = coder.decodeObject(forKey: "lastName") as! String
        number = coder.decodeObject(forKey: "number") as! String
        
//        super.init()
    }

    
    var name: String = ""
    var lastName: String = ""
    var number: String = "9999999999"
    //var photo: String
    
    init(name: String){
        self.name=name
    }
    
    init(name: String, lastName: String, number: String){
        self.name=name
        self.lastName=lastName
        self.number=number
    }
    
//    convenience init(random: Bool){
//        if random{
//
//
//            let randomName = [
//        "Rushabh",
//        "Aman",
//
//        ]
//
//            let randomLastName = [
//            "Shah",
//            "Thakur",
//
//        ]
//
//            let randomNum = [
//            "1234567890",
//            "2345678901",
//
//        ]
//
//            self.init(name: randomName.randomElement()!, lastName: randomLastName.randomElement()!, number: randomNum.randomElement()!)
//        }else{
//            self.init(name: "nil")
//        }
//
        
        
//    }
    
    
    
    
}

