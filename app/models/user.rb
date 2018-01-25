class User < ActiveRecord::Base
	has_one :profile, dependent: :destroy
	has_many :todo_lists, dependent: :destroy
	has_many :todo_items, through: :todo_lists, source: :todo_items, dependent: :destroy
	validates :username, presence: true

	def get_completed_count
		count = 0
		self.todo_items.pluck(:completed).each do |t|
			count = count+1 if t==true
		end
		count
	end
end
