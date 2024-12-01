import Algorithms

struct Day01: AdventDay {
  // Save your data in a corresponding text file in the `Data` directory.
  var data: String

  // return the increment that corresponds to the current floor operation
  func move(with char: Character) -> Int {
    if char == "(" {
      return 1
    }
    if char == ")" {
      return -1
    }
    return 0
  }

  // return the final floor that Santa will be at
  var finalLevel: Int {
    var level = 0
    for char in data {
      level += move(with: char)
    }
    return level
  }

  // return the step number when Santa enters the basement (-1 floor)
  var basement: Int {
    var level = 0
    for (idx, char) in data.enumerated() {
      level += move(with: char)
      if level == -1 {
        return idx + 1
      }
    }
    return data.count
  }

  func part1() -> Int {
    finalLevel
  }

  func part2() -> Int {
    basement
  }
}
