# Variables have method scope in Ruby
# That means they're local to the method in which they're declared
# This helps avoid naming collisions and unintentionaly side-effects that can be caused by overwriting values in different contexts

# Local Scope (to main)
my_variable = 12

def square(number)
  # Local Scope (to square)
  sum = 0
  while true
    sum += number
    puts sum
    return sum if sum == (number * number)
  end
end

def simple_square(number)
  # puts my_variable => ERROR! my_variable isn't in scope here
  number * number
end

# Once you've got more than two parameters, consider using a Hash instead
# It's an error to call this method without required params (the ones without defaults)
# If I didn't have values for one and two, I'd be forced to pass *something* (usually nil)
def some_method(one, two, three = 3, four = 4, five = 5)
  # something using inputs
end

# Using a Hash to pass options into a method
# Simpler than providing many parameters (with or without default values)
# This way I don't have to provide values when I don't have them
def some_method(options)
  five = options[:five]
end

some_method({ :one => 2, :two => 3, :five => 55 })
