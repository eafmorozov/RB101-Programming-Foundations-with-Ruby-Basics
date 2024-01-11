=begin
PEDAC
Understand the PROBLEM
  - Inputs = loan amount
              annual percentage rate (APR)
              the loan duration
  - Outputs = monthly interest rate
              loan duration in months
              monthly payment

Examples/test case
Data Structure = No arrays or hashes needed
Algorithm

START
GET Inputs
Calculate Monthly interest rate
Calculate Loan duration in months
Calculate Monthly payement
=end

Kernel.puts("Welcome to your loan calculator!")
Kernel.puts("How much money would you like to borrow?")
loan_amount = Kernel.gets().chomp().to_i()

Kernel.puts("What is the Annual Percentage Rate (APR)?")
annual_percentage_rate = Kernel.gets().chomp().to_f() / 100

Kernel.puts("What is the duration of the loan in years?")
loan_duration = Kernel.gets().chomp().to_i()

monthly_interest_rate = annual_percentage_rate / 12

loan_duration_months = loan_duration * 12

monthly_payment = (loan_amount * (monthly_interest_rate / (1 -
                  (1 + monthly_interest_rate)**(-loan_duration_months)))).round(2)
sum_payments = monthly_payment * loan_duration_months
sum_interest = (sum_payments - loan_amount).round(2)

puts "Your monthly payment is $#{monthly_payment}."
puts "Over the #{loan_duration} years you will pay a total of $#{sum_payments}."
puts "$#{sum_interest} of this will be toward interest on your original loan" 
   + "of $#{loan_amount}."
