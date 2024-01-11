require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

puts MESSAGES.inspect

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  if num.to_i().to_s() == num 
    return true
  end
  begin 
   if num.split(".").size == 2 
     if (num.split(".")[0].to_i().to_s() == num.split(".")[0]) && (num.split(".")[1].to_i().to_s() == num.split(".")[1])
      true
      end
    else
    false
  end
rescue 
  false
end
end

def operation_to_message(op)
 word =  case op
          when "*"
            "Multiplying"
          when "/"
            "Dividing"
          when "-"
            "Subtracing"
          when "+"
            "Adding"
          end
  x = "A random line of code (needed to assign the valude of case to a vairable to be able to return the result of case."
  word
end

num1 = ''
num2 = ''
operation = ''
operation_list = <<MSG
+ for Addition
- for Subtraction
* for Multiplication
/ for Division
MSG

prompt(MESSAGES['welcome'])

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt("Hi #{name}")

loop do # main loop
  loop do
    prompt(MESSAGES["enter_number"])
    num1 = Kernel.gets().chomp()

    if valid_number?(num1)
      break
    else
      prompt("Hmm.. that doesn't look like a valid number")
    end
  end

  loop do
    prompt("Please enter a second number")
    num2 = Kernel.gets().chomp()

    if valid_number?(num2)
      break
    else
      prompt("Hmm.. that doesn't look like a valid number")
    end
  end

  prompt("What opperation would you like to perform?\n #{operation_list}")

  loop do
    operation = Kernel.gets().chomp()
    if %w(* + - /).include?(operation)
      break
    else
      prompt("Must choose a valid operator")
    end
  end

  prompt("#{operation_to_message(operation)} the two numbers...")

  answer = case operation
           when "-"
             num1.to_f - num2.to_f
           when "+"
             num1.to_f + num2.to_f
           when "*"
             num1.to_f * num2.to_f
           when "/"
             num1.to_f / num2.to_f
           end

  prompt("#{num1} #{operation} #{num2} = #{answer}")

  prompt("Do you want to perform another calculation? (y/n)")
  response = Kernel.gets().chomp()
  break unless response.downcase().start_with?('y')
end

prompt("Thank you for using the calculator! Good bye.")
