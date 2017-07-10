class ContactMailer < ApplicationMailer

	default from: "freelancer contact <#{ENV['MAIL_USERNAME']}>"
	default to: "You <#{ENV['MAIL_USERNAME']}>"

	def new_message(message)
		@message = message
    
		mail subject: "Message from #{message.name}"
	end

end
