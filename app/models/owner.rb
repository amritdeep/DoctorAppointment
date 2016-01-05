class Owner < ActiveRecord::Base
	validates :name, presence: true, length: { maximum: 32 }
	validates :zip, numericality: { only_integer: true }, length: { is: 5 }
	validates :expreince, numericality: { only_integer: true }, length: { within: 1..100 }
end
