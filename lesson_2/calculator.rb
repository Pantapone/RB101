# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

def prompt(message)
    Kernel.puts("=> #{message}")
end

prompt("Welcome to your Calculator!")
prompt("Please give me your first number")
number_1 = Kernel.gets().chomp()

prompt("Please give me your second number.")
number_2 = Kernel.gets().chomp()

prompt("What operation would you like to perform on these numbers? (Addition, Subtraction, Multiplication, Division)")
operation = Kernel.gets().chomp().to_s()


result =  case operation
          when "Addition"
            number_1.to_i() + number_2.to_i()
          when "Subtraction"
            number_1.to_i() - number_2.to_i()
          when operation == "Multiplication"
            number_1.to_i() * number_2.to_i() 
          when "Division"
            number_1.to_f() / number_2.to_f()
          else
            prompt("That is not a valid operation.")
          end

prompt("The result is #{result}.") 

