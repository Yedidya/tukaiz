require 'date'

# checking Sundays that fell on the first of the month since user's birthday

puts "Please enter you birthdate."
puts "Year:"
birth_year = gets.chomp.to_i
puts "Month (as a number):"
birth_month = gets.chomp.to_i
puts "Day (as a number):"
birth_day = gets.chomp.to_i

user_bday = Date.new(birth_year, birth_month, birth_day) 

# counts sundays that land on 1st of month from users birthdate until today
sundays = 0

user_bday.upto(Date.today) do |date|
  if date.sunday? && date.mday == 01
    sundays += 1
  end
end

puts "#{sundays} Sundays fell on the 1st of the month from your birthday until today. "



