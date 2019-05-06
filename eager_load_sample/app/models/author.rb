class Author < ApplicationRecord

  belongs_to :company, inverse_of: :authors, optional: true

  has_many :posts, inverse_of: :author, dependent: :nullify

end
