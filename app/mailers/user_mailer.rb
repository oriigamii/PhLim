class UserMailer < ApplicationMailer
	def welcome_email(user)
		@user = user
		@url = 'https://www.gmail.com'
		mail(to: @user.email, subject: 'Merci de votre inscription sur Photo-Limited')
	end
end
