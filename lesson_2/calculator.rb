# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

Kernel.puts ("Welcome to your Calculator!")

Kernel.puts "Please give me your first number"
number_1 = Kernel.gets().chomp()

Kernel.puts "Please give me your second number."
number_2 = Kernel.gets().chomp()

Kernel.puts "What operation would you like to perform on these numbers? (Addition, Subtraction, Multiplication, Division"
operation = Kernel.gets().chomp().to_s()

if operation == "addition" || operation == "Addition"
  result = number_1.to_i() + number_2.to_i()
elsif operation == "subtraction" || operation == "Subtraction"
  result = number_1.to_i() - number_2.to_i()
elsif operation == "multiplication" || operation == "Multiplication"
  result = number_1.to_i() * number_2.to_i() 
elsif (operation == "division" || operation == "Division") && number_2 != 0 
  result = number_1.to_f() / number_2.to_f()
elsif operation == "division" && number_2.to_f() == 0
  Kernel.puts "You can't divide by zero!"
else
  Kernel.puts "That is not a valid operation."
end

Kernel.puts "The result is #{result}."
