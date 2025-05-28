require 'pry'

puts "\n Welcome to student grading system "
puts "Enter the number of students!"

totals = nil
loop do
  input = gets.chomp
  if input =~ /^\d+$/ && input.to_i > 0
    totals = input.to_i
    break
  else
    puts "Please enter a valid positive number for students."
  end
end

i = 1

while i <= totals
  begin
    if i % 100 >= 11 && i % 100 <= 13
      suffix = "th"
    else
      last_digit = i % 10
      suffix = case last_digit
               when 1 then "st"
               when 2 then "nd"
               when 3 then "rd"
               else "th"
               end
    end

    puts "\nEnter #{i}#{suffix} student name:"
    name = gets.chomp.strip
    raise "Name can't be empty" if name.empty?

    puts "Enter marks for #{name}:"
    marks_input = gets.chomp

    unless marks_input =~ /^\d+$/ && marks_input.to_i.between?(0, 100)
      raise "Marks must be a number between 0 and 100"
    end
    marks = marks_input.to_i

    grade = if marks >= 91
              "A1"
            elsif marks >= 81
              "A2"
            elsif marks >= 71
              "B1"
            elsif marks >= 61
              "B2"
            elsif marks >= 51
              "C1"
            elsif marks >= 41
              "C2"
            elsif marks >= 33
              "D"
            elsif marks >= 21
              "E1"
            else
              "E2"
            end

    puts "#{name} scored #{marks}, the Grade is: #{grade}"

    i += 1

  rescue => e
    puts "Oops! #{e.message}. Please try again."
  end
end
