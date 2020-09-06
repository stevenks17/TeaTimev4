class Tea < ApplicationRecord
  belongs_to :brand
  has_many :reviews
  accepts_nested_attributes_for :brand
  #validate :not_a_duplicate
  validates :flavor, presence:true  
  validates :description, presence:true

  def brand_attributes=(attributes)
    self.brand = Brand.find_or_create_by(attributes) if !attributes['title'].empty?
    self.brand
  end

  #def not_a_duplicate
   # tea = Tea.find_by(flavor: flavor, brand_id: brand_id)
   # if !!tea && tea != self
    #  errors.add(:flavor, 'has already been added for that brand')
   # end
 # end

  def brand_name
    brand.try(:title)
  end

  def flavor_and_brand
    "#{flavor} - #{brand.try(:title)}"
  end

end
