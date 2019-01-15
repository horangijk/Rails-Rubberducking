class Student < ApplicationRecord
  has_many :ducks
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :mod, inclusion: {in: 1..5}
end
