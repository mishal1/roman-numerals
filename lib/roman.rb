class RomanNumerals

  def convertArabicToRoman(number)
    number < 100 ? oneToOneHundred(number) : overOneHundred(number)
  end

  def oneToOneHundred(number)
    number < 10 ? under10s(number) : under100s(number)
  end

  def overOneHundred(number)
    number < 1000 ? under1000s(number) : convertToM(number)
  end

  def under10s(number)
    number < 5 ? convertToI(number) : 'V'
  end

  def under100s(number)
    number < 50 ? convertToX(number) : 'L'
  end

  def under1000s(number)
    number < 500 ? convertToC(number) : 'D'
  end

  def convertToI(number)
    number < 4 ? 'I' * number : 'IV'
  end

  def convertToX(number)
   return 'X' * (number / 10) if number
  end

  def convertToC(number)
    'C' * (number / 100)
  end

  def convertToM(number)
    'M' * (number / 1000)
  end

end