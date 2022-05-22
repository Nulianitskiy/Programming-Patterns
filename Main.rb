current_path = File.dirname(__FILE__)
require "#{current_path}/Department.rb"
require "#{current_path}/Department_list.rb"

dept1 = Department.new("NumberOne", "+71112345678", ["RABotat`","Slujit`","Prismikatsa"])
dept2 = Department.new("BoomBigaBoom", "+70189091456", ["1", "2", "3"])

dept_list = [dept1, dept2]
#puts dept1
#puts dept2

#puts dept1.show_all_dutyes
#puts dept2.show_all_dutyes

#puts Department_list.read_from_txt("C:\\Users\\Captain\\Ruby\\ruby_dungeon\\L2\\Department.txt")

#write_to_txt(read_from_txt("C:\\Users\\Captain\\Ruby\\ruby_dungeon\\L2\\Department.txt"))

d_list=Department_list.read_from_yaml("departments2.yaml")