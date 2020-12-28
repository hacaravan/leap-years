require 'leap_years'

describe 'leap_years' do
  it 'returns true when a year divisible by 400 is passed' do
    expect(leap_year(2400)).to eq true
  end
end
