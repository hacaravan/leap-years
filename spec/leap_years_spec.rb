require 'leap_years'

describe 'leap_years' do
  it 'returns true when a year divisible by 400 is passed' do
    expect(leap_year(2400)).to eq true
  end
  it 'returns false when a year divisible by 100 but not by 400 is passed' do
    expect(leap_year(2100)).to eq false
  end
  it 'returns true when a year divisible by 4 but not by 100 is passed' do
    expect(leap_year(2020)).to eq true
  end
end
