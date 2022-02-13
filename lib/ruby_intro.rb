# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  tot = 0
  arr.each{|val| tot += val}
  return tot
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.size == 0
    return 0
  elsif arr.size == 1
    return arr[0]
  else
    return arr.sort().last(2).sum()
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  hash = {}
  arr.each{ |val|
    if hash.key?(n - val)
      return true
    end
    hash[val] = true
  }
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s == ""
    return false
  elsif s[0] =~ /[aeiou\W]/i
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s =~ /^[01]*00$/ or s == "0"
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  attr_reader :isbn, :price
  
  def price= price
    price = price.to_f
    if price <= 0
      raise ArgumentError.new("Price needs to be positive number")
    end
    @price = price
  end
  
  def isbn= isbn
    if isbn == ''
      raise ArgumentError.new("ISBN number should not be empty")
    end
    @isbn = isbn
  end

  def initialize(isbn, price)
    self.isbn = isbn
    self.price = price
  end

  def price_as_string
    return "$" + sprintf("%.2f", price)
  end
end
