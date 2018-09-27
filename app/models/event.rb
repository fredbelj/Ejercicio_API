class Event < ApplicationRecord
  belongs_to :artist
  belongs_to :category
  has_many :evaluations
  has_many :days
end
