require 'pry'
def stockList(listOfArt, listOfCat)
  r = Hash.new(0)
  listOfArt.each do |art|
    category = art.split[0][0]
    quantity = art.split[1].to_i
    r[category] += quantity
  end
  listOfCat.map { |cat| "(#{cat} : #{r[cat]})" }.join(' - ')
end
