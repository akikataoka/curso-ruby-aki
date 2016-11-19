class User < ApplicationRecord
	has_one :profile, dependent: :destroy
	has_many :todo_list, dependent: :destroy
	has_many :todo_item, through: :todo_list	
end
