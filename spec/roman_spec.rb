require 'roman'

describe RomanNumerals do

  let(:roman) {RomanNumerals.new}
  let(:split) {double :split}
  
  it 'says "I" when the number is 1' do
    expect(roman.convertArabicToRoman(1, split)).to eq 'I'
  end

  it 'says "V" when the number is 5' do
    expect(roman.convertArabicToRoman(5, split)).to eq 'V'
  end 

  it 'says "X" when the number is 10' do
    expect(roman.convertArabicToRoman(10, split)).to eq 'X'
  end

  it 'says "L" when the number is 50' do
    expect(roman.convertArabicToRoman(50, split)).to eq 'L'
  end

  it 'says "C" when the number is 100' do
    expect(roman.convertArabicToRoman(100, split)).to eq 'C'
  end

  it 'says "D" when the number is 500' do
    expect(roman.convertArabicToRoman(500, split)).to eq 'D'
  end

  it 'says "M" when the number is 1000' do
    expect(roman.convertArabicToRoman(1000, split)).to eq 'M'
  end

  it 'says "III" if the number is 3' do
    expect(roman.convertArabicToRoman(3, split)).to eq 'III'
  end

  it 'says "XXX" if the number is 30' do
    expect(roman.convertArabicToRoman(30, split)).to eq 'XXX'
  end

  it 'says "CCC" if the number is 3000' do
    expect(roman.convertArabicToRoman(300, split)).to eq 'CCC'
  end

  it 'says "MMM" if the number is 3000' do
    expect(roman.convertArabicToRoman(3000, split)).to eq 'MMM'
  end

  it 'says "IV" if the number is 4' do
    expect(roman.convertArabicToRoman(4, split)).to eq 'IV'
  end

  it 'says "IX" if the number is 9' do
    expect(roman.convertArabicToRoman(9, split)).to eq 'IX'
  end

  it 'says "XL" if the number is 40' do
    expect(roman.convertArabicToRoman(40, split)).to eq 'XL'
  end

  it 'says "XC" if the number is 90' do
    expect(roman.convertArabicToRoman(90, split)).to eq 'XC'
  end

  it 'says "CD" if the number is 400' do
    expect(roman.convertArabicToRoman(400, split)).to eq 'CD'
  end

  it 'says "CM" if the number is 900' do
    expect(roman.convertArabicToRoman(900, split)).to eq 'CM'
  end

  it 'says "XI" if the number is 1572' do
    allow(split).to receive(:convertToArray).and_return([1000, 500, 0, 50, 20, 0, 2])
    expect(roman.convertArabicToRoman(1572, split)).to eq 'MDLXXII'
  end

end