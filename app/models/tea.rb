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


  def flavor_and_brand
    "#{brand.try(:title)} - #{flavor}"
  end

  def self.alpha
    order(:flavor)
  end
end
