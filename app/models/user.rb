=begin
  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.integer "gender"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "longitude", precision: 10, scale: 6
    t.decimal "latitude", precision: 10, scale: 6
  end
=end

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
