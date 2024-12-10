import Testing

@testable import aoc

@Suite("Day04")
struct Day04Tests {

  @Test("hash")
  func testPart1() async throws {
    let challenge = Day04(data: "abcdef\n")
    #expect(challenge.part1() == 609043)
  }

}
