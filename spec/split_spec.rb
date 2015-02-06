require 'split'

describe SplitNumbers do

  let(:split) {SplitNumbers.new}
  
  it '1000 should be the only element in the array' do
    expect(split.convertToArray(1000)).to eq [1000]
  end

    it '3000 should be the only element in the array' do
    expect(split.convertToArray(3000)).to eq [3000]
  end

  it '1100 should be split into 1000 and 100' do
    expect(split.convertToArray(1500)).to eq [1000, 500]
  end

  it '3100 should be split into 1000 and 100' do
    expect(split.convertToArray(3500)).to eq [3000, 500]
  end

  it '3050 should should be split into 3000, 0, 0, 50' do
    expect(split.convertToArray(3050)).to eq [3000, 0, 0, 50]
  end

  it '1572 should should be split into 1000, 500, 0, 50, 20, 0, 2' do
    expect(split.convertToArray(1572)).to eq [1000, 500, 0, 50, 20, 0, 2]
  end

end