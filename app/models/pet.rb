class Pet < ApplicationRecord
	SPECIES = [
		'dog',
		'cat'
	]

	validates :name, presence: true, uniqueness: true
	validates :species, presence: true, inclusion: { in: SPECIES }
end
