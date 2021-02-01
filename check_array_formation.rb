# @param {Integer[]} arr
# @param {Integer[][]} pieces
# @return {Boolean}
def can_form_array(arr, pieces)
  map  = {}
  pieces.each do |piece|
    map[piece[0]] = piece
  end
  i = 0
  while(i < arr.length)do
    if(map.include?(arr[i]))
      b = map[arr[i]]
      b.each do |val|
        if(val == arr[i])
          i += 1
        else
          return false
        end
      end
    else
      return false
    end
  end
  return true
end