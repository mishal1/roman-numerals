class RomanNumerals

  def convertArabicToRoman(number)
    return oneToOneHundred(number) if number < 100
    return overOneHundred(number) if number >= 100
  end

  def oneToOneHundred(number)
    return under10s(number) if number < 10
    return under100s(number) if number < 100
  end

  def overOneHundred(number)
    return under1000s(number) if number < 1000
    return convertToM(number)
  end

  def under10s(number)
    return convertToI(number) if number < 5
    return 'V' if number < 10
  end

  def under100s(number)
    return convertToX(number) if number < 50 
    return 'L' if number < 100
  end

  def under1000s(number)
    return convertToC(number) if number < 500
    return 'D' if number < 1000
  end

  def convertToI(number)
    'I' * number
  end

  def convertToX(number)
   'X' * (number / 10)
  end

  def convertToC(number)
    'C' * (number / 100)
  end

  def convertToM(number)
    'M' * (number / 1000)
  end

end