# frozen_string_literal: true

class Studio < ApplicationRecord
  has_many :shows, dependent: :destroy
end
