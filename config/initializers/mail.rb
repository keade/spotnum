ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.sendgrid.net',
  :port           => '587',
  :authentication => :plain,
  :user_name      => 'app4969696@heroku.com',
  :password       => 'yzjbochy',
  :domain         => 'spotnumber.com'
}
ActionMailer::Base.delivery_method = :smtp