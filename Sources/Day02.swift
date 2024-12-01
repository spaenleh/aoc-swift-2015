import Algorithms

struct Wrapper {
  var l: Int
  var w: Int
  var h: Int
  var side1: Int { l * w }
  var side2: Int { w * h }
  var side3: Int { h * l }
  var smallestArea: Int {
    [side1, side2, side3].min() ?? 0
  }

  var smallestSide: Int {
    2 * [l, w, h].min(count: 2).reduce(0, +)
  }

  var volume: Int {
    l * h * w
  }

  init<S: StringProtocol>(_ dimensions: S) {
    let dims = dimensions.split(separator: "x")
    l = Int(dims[0]) ?? 0
    w = Int(dims[1]) ?? 0
    h = Int(dims[2]) ?? 0
  }

  var paperArea: Int {
    2 * (side1 + side2 + side3) + smallestArea
  }

  var ribbonLength: Int {
    smallestSide + volume
  }
}

struct Day02: AdventDay {
  // Save your data in a corresponding text file in the `Data` directory.
  var data: String

  func part1() -> Int {
    data.split(separator: "\n").map { Wrapper($0).paperArea }.reduce(0, +)
  }

  func part2() -> Int {
    data.split(separator: "\n").map { Wrapper($0).ribbonLength }.reduce(0, +)
  }
}
