class UserMailer < ApplicationMailer
    default from: 'garagesale310@gmail.com'
    
    def welcome_email(user)
        @user= user
        @url = 'http://mail.google.com'
        mail(to: @user.email, subject: 'Welcome to Garage Sale')
    end
    def password_reset(user)
    @user = user
    @url ='http://mail.google.com'
    mail(to: @user.email, subject: "Garage Sale Password reset")
    end
end
