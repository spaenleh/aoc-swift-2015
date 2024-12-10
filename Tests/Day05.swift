import Testing

@testable import aoc

@Suite("Day05")
struct Day05Tests {
  let testData = """

    """

  @Test("isNice1")
  func testIsNice1() async throws {
    // nice
    #expect(Day05.isNice1("ugknbfddgicrmopn") == true)
    #expect(Day05.isNice1("aaa") == true)
    // naughty
    #expect(Day05.isNice1("jchzalrnumimnmhp") == false)
    #expect(Day05.isNice1("haegwjzuvuyypxyu") == false)
    #expect(Day05.isNice1("dvszwmarrgswjxmb") == false)
  }
  @Test("isNice2")
  func testIsNice2() async throws {
    // nice
    #expect(Day05.isNice2("qjhvhtzxzqqjkmpb") == true)
    #expect(Day05.isNice2("xxyxx") == true)
    // naughty
    #expect(Day05.isNice2("uurcxstgmygtbstg") == false)
    #expect(Day05.isNice2("ieodomkazucvgmuy") == false)
  }
}
