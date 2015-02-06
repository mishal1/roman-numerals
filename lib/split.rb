class SplitNumbers

  def convertToArray(number)
    setup(number)
    loopThroughNumber(number)
  end

  def setup(number)
    variables(number)
    @array = []
  end

  def variables(number)
    @value = 1000
    @divisor = 2
    @number = number
  end

  def loopThroughNumber(number)
    something(@number) until @number === 0
    @array
  end

  def something(number)
    seperateNumbers
    @divisor === 2 ? @divisor = 5 : @divisor = 2
  end

  def unitMultipliedByValue(unit)
    unit * @value
  end

  def seperateNumbers
    unit = @number / @value
    pushNumberIntoArray(unit)
    @value = @value / @divisor
  end

  def pushNumberIntoArray(unit)
    @array << unitMultipliedByValue(unit)
    @number -= unitMultipliedByValue(unit)
  end

end