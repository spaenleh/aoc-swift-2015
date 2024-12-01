import Testing

@testable import aoc

@Suite("Day01")
struct Day01Tests {

  @Test("part1")
  func testPart1() async throws {
    #expect(Day01(data: "(())").part1() == 0)
    #expect(Day01(data: "()()").part1() == 0)
    #expect(Day01(data: "(((").part1() == 3)
    #expect(Day01(data: "(()(()(").part1() == 3)
  }

  @Test("part2")
  func testPart2() async throws {
    #expect(Day01(data: ")").part2() == 1)
  }
}
