
import Foundation

import RealmSwift

class Specimen: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var specimenDescription: String = ""
    @objc dynamic var latitude: Double = 0.0
    @objc dynamic var longitude: Double = 0.0
    @objc dynamic var created: Date = Date()
    
    @objc dynamic var category: Category!
}

