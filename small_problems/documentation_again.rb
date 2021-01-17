#1 
# instance vs class methods -> class methods get called on the class, instance methods on the object (# indicates that it is an instance method)

#2
# -4712-01-01
# 2016-01-01
# 2016-05-01
# 2016-05-13

#3
# [4, 5, 3, 6]

#4
a = [1, 4, 8, 11, 15, 19]

over_8  = a.bsearch {|num| num > 8}
puts over_8

#5
# index error
# beats me
# 49

#6
# 5
# 8

#7
s = 'abc'
puts s.public_methods(false).inspect

#8
a = [5, 9, 3, 11]
puts a.min(2)

#9
