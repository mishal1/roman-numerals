require 'roman'

describe RomanNumerals do

  let(:roman) {RomanNumerals.new}
  
  it 'says "I" when the number is 1' do
    expect(roman.convertArabicToRoman(1)).to eq 'I'
  end

  it 'says "V" when the number is 5' do
    expect(roman.convertArabicToRoman(5)).to eq 'V'
  end 

  it 'says "X" when the number is 10' do
    expect(roman.convertArabicToRoman(10)).to eq 'X'
  end

  it 'says "L" when the number is 50' do
    expect(roman.convertArabicToRoman(50)).to eq 'L'
  end

  it 'says "C" when the number is 100' do
    expect(roman.convertArabicToRoman(100)).to eq 'C'
  end

  it 'says "D" when the number is 500' do
    expect(roman.convertArabicToRoman(500)).to eq 'D'
  end

  it 'says "M" when the number is 1000' do
    expect(roman.convertArabicToRoman(1000)).to eq 'M'
  end

  it 'says "III" if the number is 3' do
    expect(roman.convertArabicToRoman(3)).to eq 'III'
  end

  it 'says "XXX" if the number is 30' do
    expect(roman.convertArabicToRoman(30)).to eq 'XXX'
  end

  it 'says "CCC" if the number is 3000' do
    expect(roman.convertArabicToRoman(300)).to eq 'CCC'
  end

  it 'says "MMM" if the number is 3000' do
    expect(roman.convertArabicToRoman(3000)).to eq 'MMM'
  end

  it 'says "IV" if the number is 4' do
    expect(roman.convertArabicToRoman(4)).to eq 'IV'
  end

  it 'says "IX" if the number is 9' do
    expect(roman.convertArabicToRoman(9)).to eq 'IX'
  end

  it 'says "XL" if the number is 40' do
    expect(roman.convertArabicToRoman(40)).to eq 'XL'
  end

  it 'says "XC" if the number is 90' do
    expect(roman.convertArabicToRoman(90)).to eq 'XC'
  end

  it 'says "CD" if the number is 400' do
    expect(roman.convertArabicToRoman(400)).to eq 'CD'
  end

  it 'says "CM" if the number is 900' do
    expect(roman.convertArabicToRoman(900)).to eq 'CM'
  end

end