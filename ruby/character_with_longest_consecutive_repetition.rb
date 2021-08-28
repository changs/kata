require 'pry'
def longest_repetition(chars)
  return ['', 0] if chars.empty?

  matches = chars.to_enum(:scan, /(\w)\1{0,}/).map { Regexp.last_match }
  lengths = matches.map { |m| m[0].to_s.length }
  [matches[lengths.index(lengths.max)][0].to_s[0], lengths.max]
end
