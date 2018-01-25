class AddUserToTodoList < ActiveRecord::Migration
  def change
  	add_column :todo_lists, :user, :preferences
  end
end
