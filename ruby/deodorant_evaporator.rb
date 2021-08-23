def evaporator(content, evap_per_day, threshold)
  c = 1
  evap_per_day /= 100.0
  threshold /= 100.0
  day = 0

  while c > threshold
    c -= (c * evap_per_day)
    day += 1
  end
  day
end
