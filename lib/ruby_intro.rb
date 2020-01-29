# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0){|sum,x| sum + x }
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.max(2).sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.empty?
  	return false
  end	

  combos = arr.permutation(2).select { |x, y| x + y == n }
  if combos.empty?
    return false
  else
    return true
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  str = "Hello, "
  str.concat(name) 
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if /^[^aeiou\W]/i.match(s) == nil #first_character not(aeiou & non_word) case_sensitive is null -> return False
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s !~ /[^01]/ and s.to_i % 4 == 0 and !s.empty? #contains only 0s,1s and multiple of 4 and not empty --> return True
  	return true
  else
  	return false
  end	
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_accessor :isbn, :price #getters and setters are done using 'attr_accessor'

  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn #sets the attribute isbn as the argument isbn
    @price = price #sets the attribute price as the argument price
  end

  def price_as_string
    "$%.2f" % @price #concatenates % and converts price attribute (@price) into floating point with 2 decimal points 
  end
end
