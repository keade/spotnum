class Notifier < ActionMailer::Base
default :from => "team@spotnumber.com"
# send a signup email to the user, pass in the user object that contains the user's email address
def signup_email(user)
mail( :to => current_user.email,
:subject => "Thanks for signing up to SpotNumber!" )
end
end