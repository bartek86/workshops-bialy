class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :reviews
  
  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :price
  
  validates :price, 
            :format => { :with => /\A\d+(?:\.\d{0,2})?\z/ }
            
  def average_rating
    return self.reviews.average(:rating).round(1) if self.reviews.count > 0
  end
  
end
