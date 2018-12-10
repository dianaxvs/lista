class Contacto < ApplicationRecord
  validates :title, presence: true,
                      length: { minimum: 5 }
end
