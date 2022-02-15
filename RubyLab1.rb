def hello
    puts "Hello world" # Hhhhheeeeeeeeeeeeeeeeeeelllooooooooooooooooooooooooooo wo!

    puts "Okeeeyy, let's go! "
    puts "Enter u name: "
    puts "Hi, #{ARGV[0]}"

    puts "So, what's u favourite computer language?"
    my_lang = STDIN.gets.downcase.chomp
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
    my_chose = STDIN.gets.chomp

    case my_chose
    when "ruby"
        puts system "#{STDIN.gets.chomp}"
    when "OC"
        puts system "#{STDIN.gets.chomp}"
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

def del_n3(number)
    x = 0
    (1 ... number).each do |i|
        if number % i == 0 && i % 3 != 0
            x += 1
        end
    end
    x
end

def min_no_even(number)
    number.digits.sort.each do |i|
        unless i.even?
            return i
        end
    end
    0
end

def jopa(number)
    sum = sum_of_dig(number)
    mult = mult_of_dig(number)
    x = 0
    (1 ... number).each do |i|
        if number % i == 0 && i.gcd(sum) != 1 && i.gcd(mult) == 1
            x += i
        end
    end
    x
end

def digit
    puts "Who you gonna call?
    1) Сумма цифр числа
    2) Минимальная цифра числа
    3) Максимальная цифра числа
    4) Произведение цифр числа
    5) Количество делителей числа, не делящихся на 3
    6) Минимальная нечетную цифру числа
    7) Сумма всех делителей числа, взаимно простых с суммой цифр числа и не взаимно простых с произведением цифр числа"

    my_chose = ARGV[0]
    puts "Число?"
    my_number = ARGV[1].to_i

    case my_chose
    when "1"
        puts sum_of_dig(my_number)
    when "2"
        puts mindigit(my_number)
    when "3"
        puts maxdigit(my_number)
    when "4"
        puts mult_of_dig(my_number)
    when "5"
        puts del_n3(my_number)
    when "6"
        puts min_no_even(my_number)
    when "7"
        puts jopa(my_number)
    else
        puts "Ghostbusters!"
    end
end

def sum_in_arr(arr)
    x = 0
    for i in arr do
        x += i
    end
    x
end

def min_in_arr(arr)
    x = arr[0]
    for i in arr do
        if x > i
            x = i
        end
    end
    x
end

def max_in_arr(arr)
    x = arr[0]
    for i in arr do
        if x < i
            x = i
        end
    end
    x
end

def mult_in_arr(arr)
    x = 1
    for i in arr do
        x *= i
    end
    x
end

#a = [1, 2, 3, 4, 5, 4, 3, 2, 1]
#puts sum_in_arr(a)
#puts min_in_arr(a)
#puts max_in_arr(a)
#puts mult_in_arr(a)

def chose_your_destiny
    puts "Че делаем?
    1) Сумма
    2) Минимум
    3) Максимум
    4) Произведение"
    my_method = gets.chomp

    puts "Откуда массив берем?
    1) Клавиатура
    2) Файл"
    my_option = gets.chomp

    my_arr = Array.new

    case my_option
    when "1"
        my_arr = gets.chomp.split.map(&:to_i)
    when "2"
        puts "Так, ну мне нужен ещё адрес файла" 
        my_address = gets.chomp
        my_str = IO.read(my_address) # C:\Users\Captain\Ruby\text.txt
        my_arr = my_str.split.map(&:to_i)
    else
        puts "Ошибка в выборе массива"
    end

    case my_method
    when "1"
        puts sum_in_arr(my_arr)
    when "2"
        puts min_in_arr(my_arr)
    when "3"
        puts max_in_arr(my_arr)
    when "4"
        puts mult_in_arr(my_arr)
    else
        puts "Ошибка в выборе метода"
    end
end

def get_arr

    puts "Откуда массив берем?
    1) Клавиатура
    2) Файл"
    my_option = STDIN.gets.chomp

    my_arr = Array.new

    case my_option
    when "1"
        my_arr = gets.chomp.split.map(&:to_i)
    when "2"
        puts "Так, ну мне нужен ещё адрес файла" 
        my_address = gets.chomp
        my_str = IO.read(my_address) # C:\Users\Captain\Ruby\text.txt
        my_arr = my_str.split.map(&:to_i)
    else
        puts "Ошибка в выборе массива"
    end
    my_arr
end

def if_glob_min
    arr = get_arr
    arr[gets.to_i] == arr.min
end

def swap_min_max
    arr = get_arr
    imin = arr.min
    imax = arr.max
    arr = arr.map{|i| i == imin ? "x" : i}
    arr = arr.map{|i| i == imax ? imin : i}
    arr = arr.map{|i| i == "x" ? imax : i}
    arr
end

def if_max_in_interval(a,b)
    arr = get_arr
    subarr = arr[a..b]
    subarr.include?(arr.max)
end

def av_of_mod
    arr = get_arr
    n_arr = arr.map{|i| i.abs}
    n_arr.sum/n_arr.length
end

def more_av_less_max
    arr = get_arr
    arr = arr.select{|i| i > arr.sum/arr.length && i < arr.max}
end

def chose_b4

    puts "Че выбираем?
    1) Определить является ли элемент по указанному индексу глобальным минимумом.
    2) Поменять местами минимальный и максимальный элементы массива.
    3) Проверить наличие максимального элемента массива в этом интервале.
    4) Найти среднее арифметическое модулей элементов массива.
    5) Построить новый с элементами, большими, чем среднее арифметическое списка, но меньшими, чем его максимальное значение."
    my_method = gets.chomp

    case my_method
    when "1"
        puts if_glob_min
    when "2"
        puts swap_min_max
    when "3"
        puts "Дай 2 цифры"
        puts if_max_in_interval(gets.to_i, gets.to_i)
    when "4"
        puts av_of_mod
    when "5"
        puts more_av_less_max
    else
        puts "Ошибка в выборе метода"
    end
end

def shuffle_string(text)
    text.split("").shuffle.join
end

puts shuffle_string("Hello world")