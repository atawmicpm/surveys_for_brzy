class Topic < ActiveRecord::Base

	has_many :surveys
	has_many :users, :through => :surveys
	has_many :questions

	validates :subject, :uniqueness => true

end
