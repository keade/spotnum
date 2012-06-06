class User < ActiveRecord::Base
  
  has_many :items
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable :validatable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :confirmable

  # Setup accessible (or protected) attributes for your model :password_confirmation
  attr_accessible :email, :password, :remember_me, :password_confirmation
end
