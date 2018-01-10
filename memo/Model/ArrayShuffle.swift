
import Foundation

extension Array {
    func shuffle() -> Array {
        var newArr = self
        for i in 0..<self.count {
            let randomIndex = arc4random_uniform(UInt32(self.count - 1))
            newArr.swapAt(i, Array.Index(randomIndex))
        }
        return self
    }
}
