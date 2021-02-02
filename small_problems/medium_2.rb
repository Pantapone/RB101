

def test(str)
  str += "11"
  str.upcase!
end

test_s =  "hel"
p test(test_s)
puts test_s