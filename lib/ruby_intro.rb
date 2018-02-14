# Arrays, Hashes and Enumerables
# 1.0

def sum elements
  elements.reduce 0, :+
end

# 1.1

def max_2_sum elements
  sum(elements.sort.last(2))
end

# 1.2

def sum_to_n? elements, total
  if elements.empty?
    return false if total == 0
  else
    elements.combination(2).to_a.each do |pair|
      return true if sum(pair) == total
    end
  end

  return false
end



# Strings and Regular Expressions
# 2.0

def hello name
  "Hello, " + name
end

# 2.1

def starts_with_consonant? s
  !!(s[0] =~ /[bcdfghjklmnprstvwxyz]+/i)
end

# 2.2

def binary_multiple_of_4? s
  if s =~ /^[0-1]+$/
    return s.to_i(2) % 4 == 0 
  end
  false
end



# Object Oriented Basics

class BookInStock

  attr_accessor :isbn, :price

  def initialize isbn, price
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%.2f", @price)
  end

end
