class Rating < ApplicationRecord
  # Direct associations

  belongs_to :entertainment

  belongs_to :user

  # Indirect associations

  # Validations

end
