class Entertainment < ApplicationRecord
  # Direct associations

  has_many   :ratings,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
