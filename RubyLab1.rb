def hello
    puts "Hello world" # Hhhhheeeeeeeeeeeeeeeeeeelllooooooooooooooooooooooooooo wo!

    puts "Okeeeyy, let's go! "
    puts "Enter u name: "
    u_name = gets
    puts "Hi, #{u_name}"

    puts "So, what's u favourite computer language?"
    my_lang = gets.downcase.chomp
    #if my_lang == "ruby"
    #    puts "You pathetic..."    
    #else
    #    puts "Not for long..."
    #end

    case my_lang
    when "ruby"
        puts "yea yea...."
    when "c#"
        puts "This is the right answer"
    when "html"
        puts "I call the cops!!!"
    else
        puts "I have no idea"
    end

    puts "Ok, a u wanna execute ruby or OC command?"
    my_chose = gets.chomp

    case my_chose
    when "ruby"
        system "#{gets.chomp}"
    when "OC"
        system "#{gets.chomp}"
    else
        puts "I don't understand you"
    end
end

def sum_of_dig(number)
    number.digits.sum
end

def mindigit(number)
    number.digits.min
end

def maxdigit(number)
    number.digits.max
end

def mult_of_dig(number)
    y = 1
    number.digits.each do |x|
        y *= x
    end
    y
end
x = mindigit(1551)
y = maxdigit(16761)
z = mult_of_dig(12345)
puts x
puts y
puts z