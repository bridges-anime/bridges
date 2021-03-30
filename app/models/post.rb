# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :communities
  belongs_to :users
  has_many :replies, dependent: :destroy
end
