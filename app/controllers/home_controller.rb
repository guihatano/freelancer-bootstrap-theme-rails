class HomeController < ApplicationController

	def index
		@message = Message.new
	end

	def create_message
		@message = Message.new(message_params)
    if @message.valid?
      ContactMailer.new_message(@message).deliver
      # redirect_to root_path, :flash => {:success => "Message sent"}
    else
      render :index
    end
	end

	private

		def message_params
      params.permit(:name, :email, :phone, :content)
    end
end