class Recommend < ApplicationRecord
  # Direct associations

  belongs_to :receiver

  belongs_to :entertainment

  belongs_to :user

  # Indirect associations

  # Validations

end
