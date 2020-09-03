class Brand < ApplicationRecord
    has_many :teas
    validates :title, presence: true, uniqueness: true

end
