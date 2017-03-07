import Foundation

func digPow(for number: Int, using power: Int) -> Int {

  let numbers = String(number).characters.flatMap { Int(String($0)) }
  var exponent = power
  var sum = 0

  for num in numbers {
    sum += Int(pow(Double(num), Double(exponent)))
    exponent += 1
  }

  let solution = sum/number
  print(solution)
  if solution * number == sum {
    return solution
  } else {
    return -1
  }
}


