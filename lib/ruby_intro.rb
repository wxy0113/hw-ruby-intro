# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr == nil || arr.length == 0
    return 0
  else
    return arr.reduce(:+)
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr == nil || arr.length == 0
    return 0
  else 
    return sum(arr.sort.last(2))
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr == nil || arr.length < 2
    return false
  else
    return arr.combination(2).find{ |x,y| x + y == n } ? true : false 
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " << name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s == nil || s.length == 0
    return false
  else
    return s =~ /^[b-df-hj-np-tv-z]/i
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s == nil || s.length == 0 || s =~ /[^01]/
    return false
  end
  if s == '0'
    return true
  end
  return s =~ /00$/
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    if isbn == nil || isbn.length == 0 || price <= 0
      raise ArgumentError
    else
      @isbn, @price = isbn, price
    end
  end
  def price_as_string() 
    return sprintf("$%.2f", @price)
  end
end
