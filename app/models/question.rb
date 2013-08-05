class Question < ActiveRecord::Base

	belongs_to :topic
	has_many :answers
	has_many :surveys, :through => :answers	

end
