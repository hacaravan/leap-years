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

describe 'nearest_leap_year' do
  it 'returns the year if fed a leap year' do
    expect(nearest_leap_year(2020)).to eq 2020
  end
  it 'returns the subsequent year if fed one less than a leap year' do
    expect(nearest_leap_year(2019)).to eq 2020
  end
  it 'returns the preceding year if fed one more than a leap year' do
    expect(nearest_leap_year(2021)).to eq 2020
  end
  it 'returns the next leap year (as default, rather than previous) if two less than a leap year' do
    expect(nearest_leap_year(2018)).to eq 2020
  end
  it 'returns the next leap year (four years ahead, rather than previous) if passed a multiple of 100 but not 400' do
    expect(nearest_leap_year(1900)).to eq 1904
  end
  it 'returns the previous leap year if three more than a leap year and the next year is not a leap year' do
    expect(nearest_leap_year(1899)).to eq 1896
  end
end
