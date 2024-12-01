import Testing

@testable import aoc

@Suite("Day03")
struct Day03Tests {

  @Test("part1")
  func testPart1() async throws {
    let results = [">": 2, "^>v<": 4, "^v^v^v^v^v": 2]
    results.forEach { (key, value) in
      #expect(SantaDelivery(key).atLeastOnePresent == value)
      #expect(Day03(data: key).part1() == value)
    }
  }

  @Test("part2")
  func testPart2() async throws {
    let results = ["^v": 3, "^>v<": 3, "^v^v^v^v^v": 11]
    results.forEach { (key, value) in
      #expect(RobotSantaDelivery(key).atLeastOnePresent == value)
      #expect(Day03(data: key).part2() == value)
    }
  }
}
