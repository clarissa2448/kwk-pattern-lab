def diamond(height)
    numStars = height * 2 + 1
    count = 0
    while count<(height + 1)
        rowStars = count * 2 + 1
        puts " " * (height-count) + "*"* rowStars + " " * (height-count)
        count = count + 1
    end
    count2 = 1
    while count2<height + 1
        rowStars = (height - count2) * 2 + 1
        puts " " * count2 + "*" * rowStars + " " * (count2)
        count2 = count2 + 1
    end
end
#diamond(2)

def diamond_chain(height, chain)
   count = 0
   while count < chain
        diamond(height)
        count = count + 1
   end
end

def diamond_long(height,chain)
    count_chain = 0
    #while count_chain < chain
        count1 = 0
        while count1<(height + 1)
            rowStars = count1 * 2 + 1
            puts (" " * (height-count1) + "*"* rowStars + " " * (height-count1)) * chain
            count1 = count1 + 1
        end
        count2 = 1
        while count2<height + 1
            rowStars = (height - count2) * 2 + 1
            puts (" " * count2 + "*" * rowStars + " " * (count2))*chain
            count2 = count2 + 1
        end
        #count_chain = count_chain + 1
    #end
    #count_chain = count_chain + 1
end
puts "Enter height: "
height = gets.chomp.to_i
puts "Enter chain length:"
chain = gets.chomp.to_i
diamond_long(height,chain)
 