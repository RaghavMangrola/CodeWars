import Foundation

func revRot(_ s: String, _ c: Int) -> String {
  if c <= 0 {
    return ""
  } else if c > s.characters.count {
    return ""
  }

  let splitString = split(s, c)
  var result = ""

  for string in splitString {
    let splitString = split(string, 1)
    let intString = splitString.map { Int($0)! }
    print(intString)

    if (intString.reduce(0, { $0 + $1 }) % 2) == 0 {
      let newIntString = intString.reversed()
      result.append(newIntString.map{ String($0) }.joined())
    } else {
      let first = intString.first
      var newIntString = intString.dropFirst()
      newIntString.append(first!)
      result.append(newIntString.map{ String($0) }.joined())
    }
  }

  return result
}

func split(_ s: String, _ c: Int) -> [String] {
  var splitString = [String]()
  var stringInCharacters = s.characters

  while stringInCharacters.count > 0 {
    splitString.append(String(stringInCharacters.prefix(c)))
    stringInCharacters = stringInCharacters.dropFirst(c)
  }

  splitString = splitString.filter { $0.characters.count == c }
  print(splitString)

  return splitString
}

print(revRot("1234", 0) == "")
print(revRot("", 0) == "")
print(revRot("1234", 5) == "")
print(revRot("733049910872815764", 5) == "330479108928157")