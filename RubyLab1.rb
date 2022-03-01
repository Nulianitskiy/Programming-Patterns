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

def if_glob_min(arr)
    arr[gets.to_i] == arr.min
end

def swap_min_max(arr)
    imin = arr.min
    imax = arr.max
    arr = arr.map{|i| i == imin ? "x" : i}
    arr = arr.map{|i| i == imax ? imin : i}
    arr = arr.map{|i| i == "x" ? imax : i}
    arr
end

def if_max_in_interval(a,b, arr)
    subarr = arr[a..b]
    subarr.include?(arr.max)
end

def av_of_mod(arr)
    n_arr = arr.map{|i| i.abs}
    n_arr.sum/n_arr.length
end

def more_av_less_max(arr)
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

    my_arr = get_arr

    case my_method
    when "1"
        puts if_glob_min(my_arr)
    when "2"
        puts swap_min_max(my_arr)
    when "3"
        puts "Дай 2 цифры"
        puts if_max_in_interval(gets.to_i, gets.to_i, my_arr)
    when "4"
        puts av_of_mod(my_arr)
    when "5"
        puts more_av_less_max(my_arr)
    else
        puts "Ошибка в выборе метода"
    end
end

def shuffle_string(text)
    text.split("").shuffle.join
end

def is_palindrome(text)
    text.match?(text.reverse)
end

def sort_by_lenght(text)
    text.split(" ").sort_by(&:length).join(" ")
end

def chose_b5_1
    puts "Че выбираем?
    1) Перемешать все символы строки в случайном порядке.
    2) Проверить, образуют ли прописные символы этой строки палиндром.
    3) Упорядочить слова по количеству букв в каждом слове."
    my_method = gets.chomp
    puts "Текст: "
    my_text = gets.chomp

    case my_method
    when "1"
        puts shuffle_string(my_text)
    when "2"
        puts is_palindrome(my_text)
    when "3"
        puts sort_by_lenght(my_text)
    else
        puts "Ошибка в выборе метода"
    end
end

def true_date(text)
    text = text.split(" ")
    months = ["января", "февраля","марта","апреля","мая","июня","июля","августа","сентября","октября","ноября","декабря"]
    for i in (0..text.length) do
        if text[i].to_i > 0 && text[i].to_i <= 31 && months.include?(text[i+1]) && text[i+2].to_i >= 0
            puts "#{text[i]} #{text[i+1]} #{text[i+2]}"
        end
    end
end

def kirilliza(text)
    max_kir = 0
    cur_kir = 0
    text.each_char do |c|
        if c >= 'А' && c <= 'я'
            cur_kir += 1
        else
            if cur_kir > max_kir
                max_kir = cur_kir
            end
            cur_kir = 0
        end
    end
    max_kir
end

def min_digit_in_str(text)
    text.split("").min
end

def digits_in_str(text)
    max_dig = 0
    cur_dig = 0
    text.each_char do |c|
        if c >= '0' && c <= '9'
            cur_dig += 1
        else
            if cur_dig > max_dig
                max_dig = cur_dig
            end
            cur_dig = 0
        end
    end
    max_dig
end

def chose_b5_2
    puts "Че выбираем?
    1) Найти наибольшее количество идущих подряд символов кириллицы.
    2) Найти минимальное из имеющихся в ней натуральных чисел.
    3) Найти наибольшее количество идущих подряд цифр."
    my_method = gets.chomp
    puts "Текст: "
    my_text = gets.chomp

    case my_method
    when "1"
        puts kirilliza(my_text)
    when "2"
        puts min_digit_in_str(my_text)
    when "3"
        puts digits_in_str(my_text)
    else
        puts "Ошибка в выборе метода"
    end
end

my_text = IO.read "C:\\Users\\Captain\\Ruby\\text2.txt"

def sort_text_by_lenght(text)
    text.split("\n").sort_by(&:length)
end

def sort_text_by_count_of_words(text)
    text.split("\n").sort_by{|x| x.count(" ")}
end

puts sort_text_by_count_of_words(my_text)