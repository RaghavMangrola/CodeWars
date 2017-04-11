func maxBall(_ v0: Int) -> Int {
  
  var time = 0.0
  var tuple: (Int, Double) = (0, 0.0)
  let initialVelocityInMetersPerSec = Double(v0) * 0.277778
  var deviceReadings = [tuple]
  var tenthOfSecond = 0
  
  
  while tuple.1 >= 0.0 {
    time += 0.1
    tenthOfSecond += 1
    let height = (initialVelocityInMetersPerSec * time) - (0.5 * 9.81 * time * time)
    tuple = (tenthOfSecond, height)
    deviceReadings.append(tuple)
  }
  
  let maxReading = deviceReadings.max { a, b in a.1 < b.1 }
  
  guard maxReading != nil else {
    return 0
  }
  print(maxReading?.0)
  return (maxReading?.0)!
}

maxBall(1_000)
