class Author < ApplicationRecord

  has_many :posts, inverse_of: :author, dependent: :nullify

end
