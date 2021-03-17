class Show < ApplicationRecord
  has_many :episodes, dependent: :destroy

  belongs_to :studios
end
