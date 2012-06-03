ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.sendgrid.net',
  :port           => '587',
  :authentication => :plain,
  :user_name      => ENV['app4969696@heroku.com'],
  :password       => ENV['yzjbochy'],
  :domain         => 'heroku.com'
}
ActionMailer::Base.delivery_method = :smtp