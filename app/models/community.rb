class Community < ApplicationRecord
  has_many :posts, dependent: :destroy
end
