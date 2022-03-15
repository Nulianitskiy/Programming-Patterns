class Department

    attr_accessor :name, :contact_phone, :main_duty

    @duty_list = Array.new

    def initialize(name, contact_phone, duty_list = nil)
        self.name = name
        self.contact_phone = is_phone_number?(contact_phone)
        @duty_list = duty_list 
        self.main_duty = ""
    end

    def to_s
        "This is departnament \"#{name}\" \nContact phone: #{contact_phone} \n#{show_all_dutyes}\n#{main_duty_show}"
	end

    def add_duty(duty)
        @duty_list.push(duty)
    end

    def delete_duty(duty)
        @duty_list.delete_at(@duty_list.index(duty))
    end

    def show_all_dutyes
        if @duty_list.empty?
            "Dutyes in this department are not set"
        else
            "Dutyes of this department are next: #{@duty_list.join(", ")}"
        end
    end

    def set_main_duty(index)
        puts show_all_dutyes
        main_duty = duty_list[index]
    end

    def main_duty_show
        if main_duty.empty?
            "Main duty of this department are not set"
        else 
            "Main duty of this department are #{main_duty}"
        end
    end

    def is_phone_number?(my_phone)
       if my_phone.match?(/[+][7][0-9]{10}/)
           my_phone
       else 
           "Wrong number!"
       end
    end
end