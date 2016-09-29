//
//  People.swift
//  swift-people
//
//  Created by Joanna Tzu-Hsuan Huang on 9/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Person {
    let name: String
    var ageInYears: Int?
    var skills = Set<String>()
    var qualifiedTutor: Bool {
        return skills.count >= 4
    }
    
    init (name: String, ageInYears: Int?) {
        self.name = name
        self.ageInYears = ageInYears
    }
    
    convenience init (name: String){
        self.init (name: name, ageInYears: nil)
        
    }
    
    convenience init() {
        self.init (name: "John Doe", ageInYears: nil)
    }
    
    func celebrateBirthday() -> String {
        if ageInYears == nil {
            return "HAPPY BIRTHDAY, \(name.uppercased())!!!)"
        } else {
            let ordinalRepresentation = ageInYears!.ordinal().uppercased()
            let ageAndOrdinal = "\(ageInYears!)" + ordinalRepresentation
            return "HAPPY \(ageAndOrdinal) BIRTHDAY, \(name.uppercased())!!!)"
        }
    }
    
    func learnSkillBash(){
        skills.insert("Bash")
    }
    
    func learnSkillXcode(){
        skills.insert("Xcode")
    }
    
    func learnSkillObjectiveC(){
        skills.insert("Objective-C")
    }
    
    func learnSkillSwift(){
        skills.insert("Swift")
    }
    
    func learnSkillInterfaceBuilder(){
        skills.insert("Interface Builder")
    }

    
}
