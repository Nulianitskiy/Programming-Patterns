class Department

    attr_accessor :name, :contact_phone

    def initialize(name, contact_phone)
        @name = name
        @contact_phone = contact_phone
    end

    def show_info
        puts "This is departnament \"#{@name}\" \nContact phone: #{@contact_phone}"
    end
end

dept1 = Department.new("NumberOne", "+01112345678")
dept2 = Department.new("BoomBigaBoom", "+80189091456")

dept1.show_info
dept2.show_info