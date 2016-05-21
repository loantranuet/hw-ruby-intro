# Part 1

# Define a method sum(array) that takes an array of integers as an argument and returns the sum of its elements.
def sum (arr)
    s=0
    arr.each{|a| s+=a}
    return s
end

# Define a method max_2_sum(array) which takes an array of integers as an argument and returns the sum of its two largest elements.
def max_2_sum (arr)
    
    s=0
    if (arr.length == 1)
        return arr[0]
    end
    
    if (arr.length == 0)
        return 0
    end
    
    if (!arr.empty?)
        arr=arr.sort{ |x,y| y <=> x }
    end
    
    s= arr[0] + arr[1]
    
    return s
end

# Define a method sum_to_n?(array, n) that takes an array of integers and an additional integer, n,
def sum_to_n? (arr, n)
    
    count=false
    
    if !(arr.empty? || arr.length == 1)
        count=!! arr.uniq.combination(2).detect{|a,b| a + b == n}   
    end
    
    return count
end

# # Part 2

# Define a method hello(name) that takes a string representing a name and returns the string "Hello, " concatenated with the name.
def hello(name)
    
    str = "Hello, #{name}"
    return str 
    
end

# Define a method starts_with_consonant?(s) that takes a string and returns true if it starts with a consonant and false otherwise.
def starts_with_consonant? (s)
    start = false
    if ((s =~ /\A(?=[^aeiou])(?=[a-z])/i) == 0)
        start = true
    end
    return start
end

# Define a method binary_multiple_of_4?(s) that takes a string and returns true if the string represents a binary number that is a multiple of 4.
def binary_multiple_of_4? (s)
    isIt = false
    if((s.to_i(2).is_a? Integer) && (s[0] == '0' || s[0] == '1'))
        if(s.to_i(2) % 4 == 0)
            isIt = true
        end
    end
    return isIt
end

# # Part 3

# Define a class BookInStock which represents a book with an ISBN number, isbn, and price of the book as a floating-point number, price, as attributes.
class BookInStock
    
    def initialize (isbn, price)
        raise ArgumentError, "Argument not valid!" unless
        !(!(price > 0) or !(isbn != ""))
        @isbn = isbn
        @price = price
    end
    
    attr_accessor :isbn
    attr_accessor :price
    
    def price_as_string ()
       return "$#{'%.2f' % @price}" 
    end
    
end