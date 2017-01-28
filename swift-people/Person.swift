//
//  Person.swift
//  swift-people
//
//  Created by ac on 1/27/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

class Person {
    let name:String
    var ageInYears:Int!
    var skills:[String] = []
    var qualifiedTutor:Bool { return skills.count >= 4 }
    var skillset:Set = Set<String>()   //set to store skills
    
    init(name:String, ageInYears:Int!) {
        self.name = name
        self.ageInYears = ageInYears
    }
    
    convenience init(name:String) {
        self.init(name:name, ageInYears:nil)
    }
    
    convenience init() {
        self.init(name:"John Doe", ageInYears:nil)
    }
    
    //III
    func celebrateBirthday()->String {
        let bdayMsg:String
        if var age = ageInYears {
            age += 1
            ageInYears = age
            bdayMsg = "HAPPY \(age)\(age.ordinal().uppercased()) BIRTHDAY, \(name.uppercased())!!!"
        } else {
            bdayMsg = "HAPPY BIRTHDAY, \(name.uppercased())!!!"
        }
        return bdayMsg
    }
    
    
    func learnSkillBash() {
        if !skills.contains("bash") {
            skills.append("bash")
        }
        //or 
        skillset.insert("bash")
    }
    
    func learnSkillXcode() {
        if !skills.contains("Xcode") {
            skills.append("Xcode")
        }

        skillset.insert("Xcode")
    }
    
    func learnSkillObjectiveC() {
        if !skills.contains("Objective-C") {
            skills.append("Objective-C")
        }

        skillset.insert("Objective-C")
    }
    
    func learnSkillSwift() {
        if !skills.contains("Swift") {
            skills.append("Swift")
        }

        skillset.insert("Swift")
    }
    
    func learnSkillInterfaceBuilder() {
        if !skills.contains("Interface Builder") {
            skills.append("Interface Builder")
        }

        skillset.insert("Interface Builder")
    }
    
 
    
}
