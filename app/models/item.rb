class Item < ActiveRecord::Base
  validates_uniqueness_of :id
  validates :name, :presence => true
  
  

  belongs_to :user
  
end
