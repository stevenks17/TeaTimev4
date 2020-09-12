class Tea < ApplicationRecord
  belongs_to :brand
  has_many :reviews
  accepts_nested_attributes_for :brand

  validates :flavor, presence:true  
  #validate :not_a_duplicate
  validates :description, presence:true


  def brand_title
    brand.try(:title)
  end
end
