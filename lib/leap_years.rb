def leap_year(year)
  if year % 4 == 0 && year % 100 == 0
    return year % 400 == 0
  else return true
  end
end
