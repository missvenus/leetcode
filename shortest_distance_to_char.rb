# @param {String} s
# @param {Character} c
# @return {Integer[]}
def shortest_to_char(s, c)
  rarr = []
  (0...s.length).each { |i|
    count = 0
    found = false
    while (s[i] != c && i < s.length)
      count += 1
      i += 1
    end
    if(s[i] == c)
      rarr << count
    else
      rarr << s.length
    end
  }
  larr = []
  # puts s.length
  (0...s.length).each { |j|
    count = 12
    while (s[j] != c && j >= 0)
      puts "j is #{j} value is #{s[j]} count is #{count}"
      count += 1
      j -= 1
    end
    # puts "\n\n\n"
    if (count > 12 && s[j] == c && j >= 0)
      # puts "if j is #{j} and #{s[j]}"
      larr <<  count-12
    elsif j == -1
      # puts "elsif j is #{j} and #{s[j]}"
      larr << 12
    else
      # puts "else j is #{j} and #{s[j]}"
      larr << 12
    end
  }
  larr
  arr = []
  size = s.length - 1

  (0..size).each { |i|
    puts "#{rarr[i]} && #{larr[i]}"
    if(rarr[i]<larr[i])
      arr << rarr[i]
    else
      arr << larr[i]
    end
  }
  arr
end

# puts shortest_to_char("loveleetcode", "e")
puts shortest_to_char("abaa", "b")
# puts a
#
# puts "\n\n\n"
#
# puts b.reverse

