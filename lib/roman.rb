class RomanNumerals

  def convertArabicToRoman(number, splitNumbers)
    @romanNumeral = []
    loopThroughSplitNumbers(number, splitNumbers)
    @romanNumeral.join
  end

  def loopThroughSplitNumbers(number, splitNumbers)
      splitNumbers.convertToArray(number).each {|number| number < 100 ? oneToOneHundred(number) : overOneHundred(number)}
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
    number < 4 ? @romanNumeral << 'I' * number : @romanNumeral << 'IV'
  end

  def convertToV(number)
    number < 9 ? 'V' : 'IX'
  end

  def convertToX(number)
    number < 40 ? @romanNumeral << 'X' * (number / 10) : @romanNumeral << 'XL'
  end

  def convertToL(number)
    number < 90 ? @romanNumeral << 'L' : @romanNumeral << 'XC'
  end

  def convertToC(number)
    number < 400 ? @romanNumeral << 'C' * (number / 100) : @romanNumeral << 'CD'
  end

  def convertToD(number)
    number < 900 ? @romanNumeral << 'D' : @romanNumeral << 'CM'
  end

  def convertToM(number)
    @romanNumeral << 'M' * (number / 1000)
  end

end