class Contactform < ApplicationRecord
  validates :name, :email, presence: true
end
