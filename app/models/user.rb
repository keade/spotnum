class User < ActiveRecord::Base
  
  has_many :items
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable :validatable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :confirmable

  # before_validation :whitelisted
  # 
  # def whitelisted
  #     unless %w{celebrityemail}.include? email
  #       errors.add :email, "is not on our invitation list"  
  #   end
  # end

  # Setup accessible (or protected) attributes for your model :password_confirmation
  attr_accessible :email, :password, :remember_me, :password_confirmation
  
  
  
end
