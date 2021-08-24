def from_nb_2_str(n, sys)
  return 'Not applicable' if sys.reduce(&:*) < n
  return 'Not applicable' if sys.permutation(2).map { |p1, p2| p1.gcd(p2) }.uniq != [1]

  result = sys.map do |s|
    n % s
  end
  "-#{result.join('--')}-"
end
