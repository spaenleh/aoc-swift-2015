import Algorithms

enum Direction: Character {
  case North = "^"
  case East = ">"
  case West = "<"
  case South = "v"

  var offset: Location {
    switch self {
    case .North: Location(x: 0, y: 1)
    case .South: Location(x: 0, y: -1)
    case .East: Location(x: 1, y: 0)
    case .West: Location(x: -1, y: 0)
    }
  }
}

struct Location: Hashable, AdditiveArithmetic {
  var x: Int
  var y: Int

  static let zero = Location(x: 0, y: 0)

  static func + (lhs: Self, rhs: Self) -> Self {
    return Self(x: lhs.x + rhs.x, y: lhs.y + rhs.y)
  }

  static func - (lhs: Self, rhs: Self) -> Self {
    return Self(x: lhs.x - rhs.x, y: lhs.y - rhs.y)
  }

}

struct SantaDelivery {
  var deliveryLocations: [Location: Int] = [Location: Int]()

  init(_ route: String) {
    var location = Location.zero
    deliveryLocations[location] = 1
    for char in route {
      let direction = Direction(rawValue: char) ?? .North
      location += direction.offset
      deliveryLocations[location] = (deliveryLocations[location] ?? 0) + 1
    }
  }

  var atLeastOnePresent: Int { deliveryLocations.count }
}

struct RobotSantaDelivery {
  var deliveryLocations: [Location: Int] = [Location: Int]()

  init(_ route: String) {
    var location = [Location.zero, Location.zero]
    deliveryLocations[Location.zero] = 2
    for (idx, char) in route.enumerated() {
      let direction = Direction(rawValue: char) ?? .North
      let offset = direction.offset
      location[idx % 2] += offset
      deliveryLocations[location[idx % 2]] = (deliveryLocations[location[idx % 2]] ?? 0) + 1
    }
  }

  var atLeastOnePresent: Int { deliveryLocations.count }
}

struct Day03: AdventDay {
  // Save your data in a corresponding text file in the `Data` directory.
  var data: String

  // add here any computed values useful for the challenge

  func part1() -> Int {
    SantaDelivery(data).atLeastOnePresent
  }

  func part2() -> Int {
    RobotSantaDelivery(data).atLeastOnePresent
  }
}
