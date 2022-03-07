class Department

    attr_accessor :name, :contact_phone

    def initialize(name, contact_phone)
        @name = name
        @contact_phone = contact_phone
    end
end

dept1 = Department.new("NumberOne", "+01112345678")

puts dept1.name
puts dept1.contact_phone