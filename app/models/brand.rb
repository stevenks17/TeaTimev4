class Brand < ApplicationRecord
    has_many :teas
    validates :title, presence: true, uniqueness: true

    scope :alpha, -> {order(:title)}

end
