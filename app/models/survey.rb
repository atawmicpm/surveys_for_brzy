class Survey < ActiveRecord::Base

	belongs_to :user
	belongs_to :topic
	has_many :answers
	has_many :questions, :through => :answers


	def self.submit(user, params)

		survey = user.surveys.find_or_create_by(topic_id: params[:parent_id])

		params[:question].each { |question_id, answer|
			a = survey.answers.find_or_create_by(question_id: question_id)
			a.answer = answer
			a.save
		}

	end

end
