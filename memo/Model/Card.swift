
import Foundation

struct Card: Equatable {
    
    var isFlipped = false
    var imageName: String
    
    static func ==(lhs: Card, rhs: Card) -> Bool {
        return lhs.imageName == rhs.imageName
    }
}
