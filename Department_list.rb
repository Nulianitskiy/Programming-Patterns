require 'yaml'

class Department_list

    @dept_list = Array.new

    def initialize(dept_list = nil)
        @dept_list = dept_list 
    end



    # Read/Write
    def read_from_txt(path)
        my_data = IO.read path
        dept_list = Array.new
        sub_data = Array.new
        n = 0
        my_data.split("\n").each do |i| 
            if i != "///"
                sub_data[n] = i 
                n+=1
            else 
                n = 0
                dept_list.push(Department.new(sub_data.shift, sub_data.shift, sub_data.shift.split("/")))
            end
        end
        dept_list
    end
    
    def write_to_txt(dept_list, path)
        file = File.open(path, "w")
        dept_list.each do |i| 
            file.print("#{i.name}\n#{i.contact_phone}\n#{i.all_dutyes}\n///\n") 
        end
        file.close
    end
    
    def write_to_yaml(dept_list, path)
        file = File.open(path, "w")
        dept_list.each do |i| 
            file.print([i.name, i.contact_phone, i.all_dutyes]).to_yaml
        end
        file.close
    end
    
    def read_from_yaml(path)
        array = YAML.load(File.read(path))
    end

end