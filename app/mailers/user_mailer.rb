class UserMailer < ActionMailer::Base
  default :from => "team@spotnumber.com"
  
  include SendGrid
  
  sendgrid_category :use_subject_lines
  sendgrid_enable :ganalytics, :opentrack
  
  def signup_email(user)
    @user = user
    @url = "http://www.spotnumber.com/users/sign_up"
    sendgrid_category "Welcome"
    mail :to => user.email, :subject => "Thanks for registering for Spotnumber! We're here to help."
  end
  
end
