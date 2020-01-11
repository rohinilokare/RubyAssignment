# Problem Staments-----
# Example 2:
# class Greeting
#     def name=(value)
#     @name = value
#     end

#     def name
#     @name
#     end
# end 

# Solution--------

class Greeting
  def name(*rest) #take 0 or more parameter
    puts '------'
    @name= rest.join(' ')
    puts @name
  end
end

g = Greeting.new() 
g.name('rohini','lokare')

# output
# ------
# rohini lokare
