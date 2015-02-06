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

end