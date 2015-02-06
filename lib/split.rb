class SplitNumbers

  def convertToArray(number)
    array = []
    value = 1000
    divisor = 2

    until number === 0
      unit = number / value
      array << unit * value
      number -= unit * value
      value = value / divisor
      divisor === 2 ? divisor = 5 : divisor = 2
    end
    array
  end

  def setup
    
  end

end