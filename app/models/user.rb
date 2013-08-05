class User < ActiveRecord::Base

	has_many :surveys
	has_many :answers, :through => :surveys

	validates :email, :presence => true
	validates :email, :uniqueness => true
	validates :email, :format => { with: /\w+@[\w|-]+\.[a-zA-Z]{2,3}/, message: 'Please enter a valid email address.' }


end
