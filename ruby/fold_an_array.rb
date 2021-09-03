def fold_array(array, runs)
  array_tmp = array.clone
  runs.times do
    half_idx = array_tmp.size / 2
    first = array_tmp.first(half_idx)
    last = array_tmp.last(half_idx)
    r = first.zip(last.reverse).map { |x, y| x + y }
    r.push(array_tmp[half_idx]) if array_tmp.size.odd?
    array_tmp = r
  end
  array_tmp
end
