class Studio < ApplicationRecord
  has_many :shows, dependent: :destroy
end
