class User < ApplicationRecord
  validates :name, :surname, :gender, :age, :latitude, :longitude, presence: true

  enum gender: {
    Male:   0,
    Female: 1
  }

  acts_as_mappable default_units:   :kms,
                   lat_column_name: :latitude,
                   lng_column_name: :longitude
end
