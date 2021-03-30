# frozen_string_literal: true

class Reply < ApplicationRecord
  belongs_to :posts
  belongs_to :users
end
