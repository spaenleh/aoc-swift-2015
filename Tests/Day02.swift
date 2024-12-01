import Testing

@testable import aoc

@Suite("Day02")
struct Day02Tests {

  @Test("Wrapping paper")
  func testWrapping() async throws {
    let wrapper = Wrapper("2x3x4")
    #expect(wrapper.l == 2)
    #expect(wrapper.w == 3)
    #expect(wrapper.h == 4)
    #expect(Wrapper("2x3x4").paperArea == 58)
  }

  @Test("Ribbon")
  func testPart2() async throws {
    let wrapper = Wrapper("2x3x4")
    #expect(wrapper.smallestSide == 10)
    #expect(wrapper.volume == 24)
    #expect(wrapper.ribbonLength == 34)
  }
}
