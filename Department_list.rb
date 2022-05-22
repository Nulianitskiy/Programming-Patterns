require 'yaml'
require 'psych'

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
        file = File.new(path, "r:UTF-8")
        text = file.read
        arr = text.split((/\n_+\n/)).map do|dep|
            Department.get_dep_str(dep)
        end
        Department_list.new(arr)
    end
    
    def write_to_txt(path)
        File.open("#{path}", "w") do |file|
            @dept_list.each do |e|
                file.puts e
                file.puts "_"
            end
        end
    end

    def write_to_yaml(path)
        File.open(path, "w") do |file|
            file.write(YAML.dump(@dept_list))
        end
    end
    
    def Department_list.read_from_yaml(path) 
        Department_list.new(Psych.safe_load_file(path, permitted_classes: [Department,Post_list,Post]))
    end

    def sort_by_name()
        @dept_list.sort_by!{|dep| dep.name.downcase}
    end

    def sort_by_numbers_vacancies
        @dept_list.sort_by{|dep| dep.get_number_vacancies}
    end

    def to_s()
        str=""
        @dept_list.each do |dep|
            str+=dep.to_s() +"\n"+"_\n"
        end
        str
    end

    def to_s_short()
        str=""
        @dept_list.each do |dep|
            str+=dep.to_s_short() +"\n"+"_\n"
        end
        str
    end
end