class Reply < ApplicationRecord
  belongs_to :posts
  belongs_to :users
end
