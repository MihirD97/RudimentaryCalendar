# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
user_list = [
["Carly", "Fiorina", "female", 1954],
["Donald", "Trump", "male", 1946],
["Ben", "Carson", "male", 1951],
["Hillary", "Clinton", "female", 1947]
]
#User.find_by(username: "Fiorina").profile.create! [{first_name: "Carly", last_name: "Fiorina", birth_year: 1954, gender: "Female" }]
#User.find_by(username: "Trump").profile.create! [{first_name: "Donald", last_name: "Trump", birth_year: 1946, gender: "Male" }]
#User.find_by(username: "Carson").profile.create! [{first_name: "Ben", last_name: "Carson", birth_year: 1951, gender: "Male" }]
#User.find_by(username: "Fiorina").profile.create! [{first_name: "Hillary", last_name: "Clinton", birth_year: 1947, gender: "Female" }]
#tdi = User.todo_items.create!(:due_date => Date.today+1.year, :title => "Bleh", :description => "Blah")
user_list.each do |fname, lname, gender, byear|
		user = User.create!(username: lname, password_digest: "xyz")
		#tdi = TodoList.find_by(n).create_todo_item(:due_date => Date.today+1.year, :title => "Bleh", :description => "Blah")
		user.create_profile!(first_name: fname, last_name: lname, gender: gender, birth_year: byear )
		user.todo_lists.create!(list_name: "temp", list_due_date: 1.year.from_now)
		count=5
		

		#t1.todo_items.create! [
			#{:due_date => Date.today+1.year, :title => "Bleh", :description => "Blah"},
			#{:due_date => Date.today+1.year, :title => "Bleh", :description => "Blah"},
			#{:due_date => Date.today+1.year, :title => "Bleh", :description => "Blah"},
			#{:due_date => Date.today+1.year, :title => "Bleh", :description => "Blah"},
			#{:due_date => Date.today+1.year, :title => "Bleh", :description => "Blah"},
		#]
		
		#until count!=0
			#user.todo_items.create!(:due_date => Date.today+1.year, :title => "Bleh", :description => "Blah")
			
			#count=count-1
		#end
	end
	TodoList.all.each do |t|
		t1 = TodoItem.create!(:due_date => Date.today+1.year, :title => "Bleh", :description => "Blah")
		t2 = TodoItem.create!(:due_date => Date.today+1.year, :title => "Cleh", :description => "Blah")
		t3 = TodoItem.create!(:due_date => Date.today+1.year, :title => "Dleh", :description => "Blah")
		t4 = TodoItem.create!(:due_date => Date.today+1.year, :title => "Eleh", :description => "Blah")
		t5 = TodoItem.create!(:due_date => Date.today+1.year, :title => "Fleh", :description => "Blah")
		t.todo_items<<t1; t.todo_items<<t2; t.todo_items<<t3; t.todo_items<<t4; t.todo_items<<t5;
		
	end
#tdl=todo_list.create([{:list_name => "Whatever", :list_due_date => Date.today+1.year}])

#User.all.each do |u| {
	#u.todo_list = tdl
	#count=5
	#until count!=0
		#u.todo_list.todo_items<<tdi
		#count=count-1
	#end

#}


