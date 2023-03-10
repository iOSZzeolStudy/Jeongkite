//
//  Person.swift
//  CardViewInSwiftUI
//
//  Created by 양정연 on 2023/03/10.
//

import Foundation

struct Person {
    let headerImage: String
    let profileImage: String
    let name: String
    let followerCount: Int
    let jobTitle: String
}

let person1 = Person(headerImage: "headerImage1", profileImage: "profileImage1", name: "Joe Dash", followerCount: 326, jobTitle: "Photographer")
let person2 = Person(headerImage: "headerImage2", profileImage: "profileImage2", name: "Ellie Cooper", followerCount: 289, jobTitle: "Accountant")

let people: [Person] = [
    Person(headerImage: "headerImage1", profileImage: "profileImage1", name: "Joe Dash", followerCount: 326, jobTitle: "Photographer"),
    Person(headerImage: "headerImage2", profileImage: "profileImage2", name: "Ellie Cooper", followerCount: 289, jobTitle: "Accountant"),
    Person(headerImage: "headerImage3", profileImage: "profileImage3", name: "Daniel Arsha", followerCount: 354, jobTitle: "Accountant"),
    Person(headerImage: "headerImage4", profileImage: "profileImage4", name: "Johan Duffle", followerCount: 513, jobTitle: "Accountant")
]
