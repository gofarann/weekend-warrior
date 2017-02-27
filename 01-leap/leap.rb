# # ```plain
# #on every year that is evenly divisible by 4
#   except every year that is evenly divisible by 100
#     unless the year is also evenly divisible by 400

# def leap_year? year
#   if year % 4 == 0
#     if year % 4 == 0 && year % 100 == 0
#       false unless year % 4 == 0 && year % 100 == 0 && year % 400 == 0
#       true
#     end
#     true
#   end
#   true
# end

# def leap_year? year
#   if year % 4 == 0 # if year is divisible by 4 go into next if block
#     if year % 100 == 0 # if year is divisible by 100, go into next block
#       if year % 400 == 0 # if year is divisible by 100 & 400, true
#         return true # had to put return, code was continuing to run without a stopper such as else
#       end
#       return false # else year divisible by only 100 => false
#     end
#     return true # if year is divisible by 4 but not 100
#   end
#   return false # if year is not divisible by 4
# end

# by not ending the if statement with an else, the code returns nil and false
# nil is also considered falsey


def leap_year? year
  if ( year % 4 == 0) || ( year % 100 == 0 && year % 400 != 0)
    return true
  else
    return false
  end
end
