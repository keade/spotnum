class Item < ActiveRecord::Base
  validates_uniqueness_of :id
  validates :name, :presence => true
  validates :cost, :presence => true
  
  belongs_to :user
  
  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
  
end
