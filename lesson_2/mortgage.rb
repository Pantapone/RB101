# the loan amount
# the annual percentage rate
# the loan duration
# monthly interest rate
# loan duration in months
# monthly paymens

def prompt(message)
  puts "=> #{message}"
end

prompt("Welcome to the mortgage calculator!")

loop do
  prompt("What is your loan amount?")
  loan_amount = ''
  loop do
    loan_amount = gets.chomp
    if loan_amount.empty? || loan_amount.to_f <= 0
      prompt("Please enter a loan amount over 0.")
    else
      break
    end
  end

  prompt("What is your annual percentage rate?")
  annual_percentage_rate = ''
  loop do
    annual_percentage_rate = gets.chomp
    if annual_percentage_rate.empty? || annual_percentage_rate.to_f <= 0
      prompt("Please enter a positive number.")
    else
      break
    end
  end

  prompt("For how many years is your loan?")
  loan_duration_years = ''
  loop do
    loan_duration_years = gets.chomp
    if loan_duration_years.empty? || loan_duration_years.to_i <= 0
      prompt("Please enter a positive number.")
    else
      break
    end
  end

  prompt("For how many months is your loan?")
  loan_duration_months = ''
  loop do
    loan_duration_months = gets.chomp
    if loan_duration_months.empty? || loan_duration_months.to_i <= 0
      prompt("Please enter a positive number.")
    else
      break
    end
  end

  annual_percentage_rate = annual_percentage_rate.to_f / 100
  mon_interest = annual_percentage_rate.to_f / 12
  months_total =  (loan_duration_years.to_i * 12) +
                  loan_duration_months.to_i
  monthly_payments =  loan_amount.to_f *
                      (monthly_interest_rate /
                      (1 - (1 + mon_interest)**(-months_total)))

  prompt("Your monthly payments are §#{monthly_payments}.")
  prompt("Do you want to do another calculation? Press 'y' to continue.")
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")
end
prompt("Thank you for using the mortgage calculator!")
