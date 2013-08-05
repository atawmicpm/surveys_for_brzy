class TopicsController < ApplicationController

	skip_before_filter :verify_authenticity_token, :only => [:create]

	def index
		@topics = Topic.all
	end

	def show
		@topic = Topic.find(params[:id])
	end

	def results
		@topic = Topic.find(params[:id])
	end

	def create
		user = User.find_or_create_by(email: params[:user][:email])
		
		if user.save
			Survey.submit(user, params)
			render :json => { success: 'Thank you for participating in our survey!' }
		else
			render :json => { error: 'Please enter a valid email address.' }
		end
	end

end

