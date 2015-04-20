require 'date'

x = Date.parse("1992", "9", "17") 

sundays = 0

x.upto(Date.today) do |date|
  if date.sunday? && date.mday == 01
    sundays += 1
  end
end



