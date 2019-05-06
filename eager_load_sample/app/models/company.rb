class Company < ApplicationRecord

  has_many :authors, inverse_of: :company, dependent: :nullify

end
