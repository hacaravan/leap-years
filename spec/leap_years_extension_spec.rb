require 'leap_years_extension'

describe 'leap_years_between' do
  it 'returns an empty array if there are no leap years between the years given' do
    expect(leap_years_between(2021, 2023)).to eq []
  end
end
