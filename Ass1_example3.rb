# # Example 3:
# def sum(a, b)
#  puts (a + b)
# end
 
# def sum(p, q, r)
#  p + q + r
# end

# def sum(x, y, z, w)
#  puts (x + y + z + w)
# end

# sum(2, 3) #=> 5
# sum(1,2,3,4) # => 10 


def sum(*rest)
    puts rest.join(',')
    puts rest.reduce { |a, b| a + b }
    puts '--------'
end

sum(2,3)
sum(1,2,3,4)