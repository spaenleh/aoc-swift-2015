import CryptoKit

func md5Hash(_ source: String) -> String {
  return Insecure.MD5.hash(data: source.data(using: .utf8)!).map { String(format: "%02hhx", $0) }
    .joined()
}

struct Day04: AdventDay {
  // Save your data in a corresponding text file in the `Data` directory.
  var data: String

  var secretKey: String {
    data.trimmingCharacters(in: .whitespacesAndNewlines)
  }

  func winningHash(startWith: String, upTo: Int = 1_000_000_000) -> Int {
    var hash = ""
    var idx = -1
    repeat {
      idx += 1
      hash = md5Hash("\(secretKey)\(idx)")
    } while !hash.starts(with: startWith) && idx < upTo
    return idx
  }

  func part1() -> Int {
    winningHash(startWith: "00000")
  }

  func part2() -> Int {
    // careful very slow (up to 3minutes)
    winningHash(startWith: "000000")
  }
}
