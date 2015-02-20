class RomanNumerals

def initialize(hash)
  @romanHash = hash
end

def convertArabicToRoman(arabicNumber)
  roman = ''
  @romanHash.each do |key, value| 
    roman << value * (arabicNumber / key) 
    divisor = arabicNumber / key
    arabicNumber -= divisor * key
  end
 roman
end

end