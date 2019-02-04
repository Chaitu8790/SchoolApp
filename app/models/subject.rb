class Subject < ApplicationRecord

	belongs_to :teacher
	has_many :records
	validates_uniqueness_of :subjectcode

end
