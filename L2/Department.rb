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

    def initialize(name, contact_phone, duty_list = nil)
        self.name = name
        self.contact_phone=(contact_phone)
        @duty_list = duty_list 
        @main_duty = 0
    end

    def to_s
        "This is departnament \"#{name}\" \nContact phone: #{contact_phone} \n#{all_dutyes}\n#{main_duty}"
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
        @duty_list.join(" /")
    end

    def set_main_duty(duty)
        @duty_list[@main_duty] = duty
    end

    def main_duty
        @duty_list[@main_duty]
    end
end