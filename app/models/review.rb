class Review < ApplicationRecord
  belongs_to :tea

  validates :content, presence: true
  validates :title, presence: true
  validates :rating, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than: 6}
  
  scope :order_by_rating, ->{group(:id).order('avg(reviews.rating) desc')}

end
