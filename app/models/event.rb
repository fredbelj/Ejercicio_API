class Event < ApplicationRecord
  belongs_to :artist
  has_many :evaluations
  has_many :days
end
