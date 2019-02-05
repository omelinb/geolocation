class User < ApplicationRecord
  validates :name, :surname, :gender, :age, :latitude, :longitude, presence: true

  enum gender: {
    Male:   0,
    Female: 1
  }
end
