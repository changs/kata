def high(x)
  words = x.split
  sums = words.map { |word| word.codepoints.map { |c| c - 96 }.sum }
  words[sums.index(sums.max)]
end
