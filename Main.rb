current_path = File.dirname(__FILE__)
require "#{current_path}/Department.rb"

dept1 = Department.new("NumberOne", "+71112345678", ["RABotat`","Slujit`","Prismikatsa"])
dept2 = Department.new("BoomBigaBoom", "+70189091456", ["1", "2", "3"])

dept_list = [dept1, dept2]
#puts dept1
#puts dept2

#puts dept1.show_all_dutyes
#puts dept2.show_all_dutyes

#puts read_from_txt("C:\\Users\\Captain\\Ruby\\ruby_dungeon\\Department.txt")

write_to_txt(dept_list, "DeptOut.txt")