require 'yaml'

class Department_list

    @dept_list = Array.new

    def initialize(dept_list = nil)
        @dept_list = dept_list
        @note = 0 
    end

    def add_note(dept)
        @dept_list.push(dept)
        note = @dept_list.size - 1
    end

    def delete_note
        @dept_list.delete_at(@note)
        note -= 1
    end

    def change_note(note)
        @dept_list[@note] = note
    end

    def get_note
        @dept_list[@note]
    end


    # Read/Write
    def Department_list.read_from_txt(path)
        file = File.new(file, "r")
        list_departments = [] # Список отделов
        for line in file.readlines
            list_departments.push(Department.read_line(line))
        end
        file.close()
        new(list_departments)
    end
    
    def write_to_txt(dept_list, path)
        File.open(path, "w") do |f|
            @dept_list.each{|x| f.puts("#{x.name};#{x.contact_phone};#{x.all_dutyes}")}
        end
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