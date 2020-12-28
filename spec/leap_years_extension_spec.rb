require 'leap_years_extension'

describe 'leap_years_between' do
  it 'returns an empty array if there are no leap years between the years given' do
    expect(leap_years_between(2021, 2023)).to eq []
  end
  it 'returns a single valued array for a simple period around a leap year' do
    expect(leap_years_between(2019, 2021)).to eq [2020]
  end
  it 'includes leap years on either side of the window' do
    expect(leap_years_between(2020, 2024)).to eq [2020, 2024]
  end
  it 'switches the min and max years around if they are given the wrong way round' do
    expect(leap_years_between(2023, 2019)).to eq [2020]
  end
  it 'does not return years that are multiples of 100 but not 400' do
    expect(leap_years_between(2099, 2101)).to eq []
  end
  it 'returns years that are multiples of 400' do
    expect(leap_years_between(1999, 2001)).to eq [2000]
  end
end
