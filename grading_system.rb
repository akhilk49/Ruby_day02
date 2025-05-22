puts "\n Welcome to student grading system "
puts "Enter the number of students!"
totals = gets.chomp.to_i
i = 1

while i <= totals
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
  name = gets.chomp

  puts "Enter marks for #{name}:"
  marks = gets.chomp.to_i

  if marks >= 91
    grade = "A1"
  elsif marks >= 81
    grade = "A2"
  elsif marks >= 71
    grade = "B1"
  elsif marks >= 61
    grade = "B2"
  elsif marks >= 51
    grade = "C1"
  elsif marks >= 41
    grade = "C2"
  elsif marks >= 33
    grade = "D"
  elsif marks >= 21
    grade = "E1"
  else
    grade = "E2"
  end

  puts "#{name} scored #{marks}, the Grade is: #{grade}"
  i += 1
end
