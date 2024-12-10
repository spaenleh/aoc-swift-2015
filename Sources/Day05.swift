import Algorithms

struct Day05: AdventDay {
  var data: String

  static let vowels: [Character] = ["a", "e", "i", "o", "u"]

  static func isNice1(_ string: Substring) -> Bool {
    let hasVowels = string.filter { Self.vowels.contains($0) }.count >= 3
    let hasRepeatingLetter = string.contains(/(.)\1/)
    let hasForbiddenSequence = string.contains(/(ab)|(cd)|(pq)|(xy)/)
    return hasVowels && hasRepeatingLetter && !hasForbiddenSequence
  }

  static func isNice2(_ string: Substring) -> Bool {
    let hasDoubleSequenceWithoutOverlap = string.contains(/(.{2}).*\1/)
    let hasRepeatingWithExactlyOneInBetween = string.contains(/(.).{1}\1/)
    return hasDoubleSequenceWithoutOverlap && hasRepeatingWithExactlyOneInBetween
  }

  func part1() -> Int {
    data.lines().map { Self.isNice1($0) }.count { $0 }
  }

  func part2() -> Int {
    data.lines().map { Self.isNice2($0) }.count { $0 }
  }
}
