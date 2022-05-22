require_relative 'Post_list.rb'
require_relative 'Post.rb'

class Department

    attr_accessor :name
    attr_reader :contact_phone
    
    def contact_phone=(my_phone)
        if my_phone.match?(/[+][7][0-9]{10}/)
            @contact_phone = my_phone
        else
            raise "Wrong Number!"
        end
    end

    @duty_list = Array.new

    def initialize(name, contact_phone, duty_list = nil, post_list=Post_list.new)
        self.name = name
        self.contact_phone=(contact_phone)
        @duty_list = duty_list 
        @main_duty = 0
        @post_list = post_list
    end

    def to_s()
        department_str="#{@name}|#{@contact_phone}"
        @duty_list.keys.each{|duty| department_str+="\n#{duty}:#{@duty_list[duty]}"}
        department_str+= @post_list.to_s
        department_str
    end

    def to_s_short()
        department_str="#{@name}|#{@contact_phone}"
    end

    def Department.get_dep_str(dep)
        dep = dep.split("\n")
        dept_name,contact_phone=dep[0].split("|")
        duties=Hash.new
        dep[1..dep.size].each do|duty| 
            duty,spec = duty.split(":")
            duties[duty]=spec
        end
        Department.new(dept_name,contact_phone,duties)
    end

    def add_duty(duty)
        @duty_list.push(duty)
        main_duty = @duty_list.size - 1
    end

    def delete_duty
        @duty_list.delete_at(@main_duty)
        main_duty -= 1
    end

    def all_dutyes
        @duty_list.keys.join(" | ")
    end

    def set_main_duty(duty)
        @duty_list[@main_duty] = duty
    end

    def main_duty
        @duty_list[@main_duty]
    end

    ef add_post(post_name,salary,vacancy)
        @post_list.add_note(Post.new(@name,post_name,salary,vacancy))
    end

    def select_post(index)
        @post_list.choose_note(index)
    end

    def get_selected_post()
        @post_list.get_note
    end

    def delete_post()
        @post_list.delete_note
    end

    def change_post(post_name,salary,vacancy)
        @post_list.change_note(Post.new(@name,post_name,salary,vacancy))
    end

    def get_vacancies()
        @post_list.get_vacancies
    end

    def get_number_vacancies()
        self.get_vacancies.length
    end

    def get_all_posts()
        @post_list.post_list
    end
end