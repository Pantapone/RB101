# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

def prompt(message)
    Kernel.puts("=> #{message}")
end

def valid_number?(num)
num.to_i != 0
end

prompt("Welcome to your Calculator! Enter your name:")

name = ''
loop do 
  name = Kernel.gets().chomp().capitalize!
  if name.empty?()
    prompt("That is not a valid name.")
  else
   break
  end
end

prompt("Welcome #{name}!")

loop do 
  number_1 = ''
  loop do 
    prompt("Please give me your first number")
    number_1 = Kernel.gets().chomp()
    if valid_number?(number_1)
      break
    else
      prompt("That is not a valid number.")
    end
  end 

  number_2 = ''
  loop do 
    prompt("Please give me your second number")
    number_2 = Kernel.gets().chomp()
    if valid_number?(number_2)
      break
    else
      prompt("That is not a valid number.")
    end
  end 

  prompt("What operation would you like to perform on these numbers? (Addition, Subtraction, Multiplication, Division)")
  operation = Kernel.gets().chomp().to_s().downcase()


  result =  case operation
            when "addition"
              number_1.to_i() + number_2.to_i()
            when "subtraction"
              number_1.to_i() - number_2.to_i()
            when operation == "multiplication"
              number_1.to_i() * number_2.to_i() 
            when "division"
              number_1.to_f() / number_2.to_f()
            else
              prompt("That is not a valid operation.")
            end

  prompt("The result is #{result}.") 
  
  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using the calculator.")
