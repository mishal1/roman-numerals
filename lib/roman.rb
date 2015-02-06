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
    number < 5 ? convertToI(number) : convertToV(number)
  end

  def under100s(number)
    number < 50 ? convertToX(number) : convertToL(number)
  end

  def under1000s(number)
    number < 500 ? convertToC(number) : convertToD(number)
  end

  def convertToI(number)
    number < 4 ? 'I' * number : 'IV'
  end

  def convertToV(number)
    number < 9 ? 'V' : 'IX'
  end

  def convertToX(number)
    number < 40 ? 'X' * (number / 10) : 'XL'
  end

  def convertToL(number)
    number < 90 ? 'L' : 'XC'
  end

  def convertToC(number)
    number < 400 ? 'C' * (number / 100) : 'CD'
  end

  def convertToD(number)
    number < 900 ? 'D' : 'CM'
  end

  def convertToM(number)
    'M' * (number / 1000)
  end

end