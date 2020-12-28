require 'leap_years_extension'

describe 'leap_years_between' do
  it 'returns an empty array if there are no leap years between the years given' do
    expect(leap_years_between(2021, 2023)).to eq []
  end
  it 'returns a single valued array for a simple period around a leap year' do
    expect(leap_years_between(2019, 2021)).to eq [2020]
  end
end
