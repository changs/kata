def stockList(listOfArt, listOfCat)
  return '' if listOfArt.empty? || listOfCat.empty?
  r = Hash.new(0)
  listOfArt.each do |art|
    art.split.tap { |cat, quantity| r[cat[0]] += quantity.to_i }
  end
  listOfCat.map { |cat| "(#{cat} : #{r[cat]})" }.join(' - ')
end
