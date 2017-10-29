import Foundation

extension Collection where Index == Int {

    func randomElement() -> Element? {
        return isEmpty ? nil : self[Int(arc4random_uniform(UInt32(endIndex)))]
    }

}
