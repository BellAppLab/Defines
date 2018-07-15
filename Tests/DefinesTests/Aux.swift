import XCTest
#if os(iOS)
@testable import iOS_Example
#endif
#if os(tvOS)
@testable import tvOS_Example
#endif
#if os(macOS)
@testable import macOS_Example
#endif
@testable import Defines


func makeAllModels() -> [Defines.Device.Model] {
    let names = [
        "AirPods",
        "AppleTV",
        "Watch",
        "AudioAccessory",
        "iPad",
        "iPhone",
        "iPod",
        "MacBookAir",
        "MacBook",
        "MacBookPro",
        "Macmini",
        "iMac",
        "MacPro"
    ]

    var result = [Defines.Device.Model]()
    names.forEach { (name) in
        result.append(contentsOf: makeModels(with: name))
    }

    if let unknown = Defines.Device.Model(rawValue: "") {
        result.append(unknown)
    }

//    print("MAKING MODELS: \(result)")

    return result
}


func makeModels(with name: String) -> [Defines.Device.Model] {
    let majorVersions = (1...30).map { $0 }
    let minorVersions = (1...30).map { $0 }

    var result = [Defines.Device.Model]()
    majorVersions.forEach { (major) in
        minorVersions.forEach { (minor) in
            if let model = Defines.Device.Model(rawValue: "\(name)\(major),\(minor)") {
                result.append(model)
            }
        }
    }

    return result
}


extension Array
{
    func compacted<ElementOfResult>(_ transform: (Element) throws -> ElementOfResult?) rethrows -> [ElementOfResult] {
        #if swift(>=4.0)
        return compacted(transform)
        #else
        return (try? flatMap(transform)) ?? []
        #endif
    }
}


extension Array where Element: Equatable
{
    func doesNotContainAnyElementsIn(_ other: Array<Element>) -> Bool {
        var hasElement = false
        for element in other {
            if contains(element) {
                hasElement = true
                break
            }
        }
        return !hasElement
    }

    func doesNotContainAnyElementsIn(_ others: Array...) -> Bool {
        var contains = false
        for other in others {
            if !self.doesNotContainAnyElementsIn(other) {
                contains = true
                break
            }
        }
        return !contains
    }

    func doesNotContainAnyElementsIn(_ others: [Array]) -> Bool {
        var contains = false
        for other in others {
            if !self.doesNotContainAnyElementsIn(other) {
                contains = true
                break
            }
        }
        return !contains
    }

    func removing(_ element: Element) -> Array {
        return filter { $0 != element }
    }
}


extension String
{
    func contains<T>(_ other: T, butNotContaining notContaing: [T]) -> Bool where T : StringProtocol {
        guard notContaing.first(where: { contains($0) }) == nil else { return false }
        return contains(other)
    }

    func contains<T>(_ others: [T]) -> Bool where T : StringProtocol {
        guard others.first(where: { contains($0) }) != nil else { return false }
        return true
    }
}
