class UserMailer < ActionMailer::Base
  include SendGrid
  sendgrid_category :use_subject_lines
  sendgrid_enable :ganalytics, :opentrack
  
  def welcome_email(user)
    sendgrid_category "Welcome"
    mail :to => user.email, :subject => "Thanks for registering for Spotnumber! We're here to help."
  end
  
end
