require 'date'

# checking Sundays that fell on the first of the month since user's birthday
puts "Welcome to the Sunday checker. This will tell you how many Sundays have fallen on the first of a month from the specified start date until the specified end date."
puts "First, let's check from your birthday until today."
puts "Enter your birthday in this format: yyyy-m-d"
birthday = gets.chomp.to_s

user_bday = Date.parse(birthday) 

# counts sundays that land on 1st of month from users birthdate until today
sundays = 0

user_bday.upto(Date.today) do |date|
  if date.sunday? && date.mday == 01
    sundays += 1
  end
end

puts "#{sundays} Sundays fell on the 1st of the month from your birthday until today. "

puts "Now, let's check how many Sundays fell on the first of the month in a specific year. Please enter a year:"
year = gets.chomp.to_i

x = Date.new(year) 

year += 1

sundays = 0

x.upto(Date.new(year)) do |date|
  if date.sunday? && date.mday == 01
    sundays += 1
  end
end

puts sundays





#end of bitrhday section, checking the sundays on 2st of the month during the 20th century






