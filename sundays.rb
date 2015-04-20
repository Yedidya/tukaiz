require 'date'

# checking Sundays that fell on the first of the month since user's birthday
puts "Welcome to the Sunday checker. This will tell you how many Sundays have fallen on the first of a month from the specified start date until the specified end date."
puts "First, let's check from your birthday until today."
puts "Enter your birthday in this format: yyyy-mm-dd"
birthday = gets.chomp.to_s

user_bday = Date.parse(birthday) 

sundays = 0

user_bday.upto(Date.today) do |date|
  if date.sunday? && date.mday == 01
    sundays += 1
  end
end

puts "#{sundays} Sundays fell on the 1st of the month from your birthday until today. "
puts "=================="

# Checks a specific year

puts "Now, let's check how many Sundays fell on the first of the month in a specific year. Please enter a year:"
start_year = gets.chomp.to_i

x = Date.new(start_year) 

sundays = 0

if x.year != Date.today.year
  end_year = x.year + 1

  x.upto(Date.new(end_year)) do |date|
    if date.sunday? && date.mday == 01
      sundays += 1
    end
  end
  puts "#{start_year} had #{sundays} Sundays land of the first of a month." 
  puts "====================="
else 
  x.upto(Date.today) do |date|
    if date.sunday? && date.mday == 01
      sundays += 1
    end
  end
  puts "So far, there have been #{sundays.to_s} Sundays to land on the first of a month in #{start_year.to_s}."
  puts "====================="
end

# Checks a century
sundays = 0 

puts "Now, enter the start of a century (eg. 1 Jan 1901):"
user_input = gets.chomp
century_start = Date.parse(user_input)
puts "Now, enter the end of a century (eg. 31 Dec 2000)"
user_input = gets.chomp
century_end = Date.parse(user_input)

century_start.upto(century_end) do |date|
  if date.sunday? && date.mday == 01
    sundays += 1
  end
end

puts "This century had #{sundays} Sundays fall on the first of a month." 
















