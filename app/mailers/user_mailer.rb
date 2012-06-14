class UserMailer < ActionMailer::Base
  
  def welcome(user, subdomain)
    @user = current_user
    mail(:from => 'welcome@spotnumber.com',
         :to => current_user.email,
         :subject => 'Welcome to Spotnumber, you businessperson you.')
  end
  
end
