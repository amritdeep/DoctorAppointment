class Pet < ActiveRecord::Base
	validates :name, presence: true, length: { maximum: 32 }
	validates :types, presence: true, inclusion: { in: %w(dog cat bird), 
	message: "%{value} isn't included" }
	validates :breed, presence: true, length: { maximum: 32 }
	validates :age, presence: true, numericality: { only_integer: true }
	validates :weight, presence: true, numericality: { only_integer: true }
	validates :date_of_last_vist, presence: true
end
