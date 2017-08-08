def diamond(height)
   numStars = height *2 + 1
   for numStars.each do |i|
       puts "*"* i
       i = i + 2
    end
   
end