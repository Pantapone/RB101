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

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
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


  operator_prompt = <<-MSG
      What operation would you like to perform?
      1) Addition
      2) Subtraction
      3) Multiplication
      4) Division
  MSG

  prompt(operator_prompt)
 
operation = ''
  loop do 
    operation = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(operation)
      break
    else 
      prompt("Must choose 1, 2, 3 or 4.")
    end
  end

  prompt("#{operation_to_message(operation)} the two numbers...")

  result =  case operation
            when '1'
              number_1.to_i() + number_2.to_i()
            when '2'
              number_1.to_i() - number_2.to_i()
            when '3'
              number_1.to_i() * number_2.to_i() 
            when '4'
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
