def leap_year(year)
  return year % 400 == 0 if year % 4 == 0 && year % 100 == 0
  year % 4 == 0
end

def leap_years_between(min_year, max_year)
  min_year, max_year = [min_year, max_year].minmax
  (min_year..max_year).to_a.select { |year| leap_year(year) }
end

def nearest_leap_year(year)
  checking_order = (0..4).to_a
  checking_order.each do |offset|
    return year + offset if leap_year(year + offset)
    return year - offset if leap_year(year - offset)
  end
end
