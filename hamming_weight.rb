# @param {Integer} n, a positive integer
# @return {Integer}
def hamming_weight(n)
  str = n.to_s(2)
  return str.count("1")
end
