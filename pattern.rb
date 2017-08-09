class String
def black;          "\e[30m#{self}\e[0m" end
def red;            "\e[31m#{self}\e[0m" end
def green;          "\e[32m#{self}\e[0m" end
def brown;          "\e[33m#{self}\e[0m" end
def blue;           "\e[34m#{self}\e[0m" end
def magenta;        "\e[35m#{self}\e[0m" end
def cyan;           "\e[36m#{self}\e[0m" end
def gray;           "\e[37m#{self}\e[0m" end

def bg_black;       "\e[40m#{self}\e[0m" end
def bg_red;         "\e[41m#{self}\e[0m" end
def bg_green;       "\e[42m#{self}\e[0m" end
def bg_brown;       "\e[43m#{self}\e[0m" end
def bg_blue;        "\e[44m#{self}\e[0m" end
def bg_magenta;     "\e[45m#{self}\e[0m" end
def bg_cyan;        "\e[46m#{self}\e[0m" end
def bg_gray;        "\e[47m#{self}\e[0m" end

def bold;           "\e[1m#{self}\e[22m" end
def italic;         "\e[3m#{self}\e[23m" end
def underline;      "\e[4m#{self}\e[24m" end
def blink;          "\e[5m#{self}\e[25m" end
def reverse_color;  "\e[7m#{self}\e[27m" end
end

def diamond(height)
    #numStars = height * 2 + 1
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
    #count_chain = 0
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

puts "Enter height: ".red
height = gets.chomp.to_i
puts "Enter chain length:".green
chain = gets.chomp.to_i
diamond_long(height,chain)
